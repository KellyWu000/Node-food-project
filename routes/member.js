const express = require('express');
const router = express.Router();
const db = require('../modules/connect-mysql');
const bcrypt = require('bcryptjs'); //密碼加密 看登入傳入的密碼跟註冊的密碼是否吻合
const jwt = require('jsonwebtoken');
const moment = require('moment');

// const upload = require('./../modules/upload-images');
// const { getListData } = require('./members');

// 登入
router.post('/login', async (req, res) => {
    const output = {
        success: false,
        token: null,
        id: 0
    }

    const [rs] = await db.query("SELECT * FROM members WHERE `email`=?", [req.body.email]);

    if (!rs.length) {
        //帳號錯誤
        output.success = false;
        return res.json(output);
    }

    const correct = await bcrypt.compare(req.body.password, rs[0].password);
    if (correct) {
        const data = {
            memberid: rs[0].sid,
            email: rs[0].email
        };

        output.success = true;
        output.token = await jwt.sign(data, process.env.JWT_SECRET);
        output.id = rs[0].sid;
    } else {
        output.success = false;
    }

    res.json(output);
});

//更改密碼
router.post('/memberchangepassword', async (req, res) => {
    const output = {
        success: false,
        error: '',
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    if (req.body.newpassword != req.body.checknewpassword) {
        output.success = false;
        output.error = '新密碼不一致';
        return res.json(output);
    }

    const [rs] = await db.query("SELECT * FROM members WHERE `sid`=?", [req.myAuth.memberid]);

    const correct = await bcrypt.compare(req.body.oldpassword, rs[0].password);

    if (correct) {
        const [result] = await db.query('UPDATE members SET password = ? WHERE sid = ?', [
            await bcrypt.hash(req.body.newpassword, 8),
            req.myAuth.memberid
        ]);
        if (result.affectedRows == 1) {
            output.success = true;
        }
    } else {
        output.success = false;
    }
    res.json(output);
});

//重設密碼
router.post('/resetpassword', async (req, res) => {
    const output = {
        success: false,
        error: '',
    }

    if (req.body.newpassword != req.body.checknewpassword) {
        output.success = false;
        output.error = '新密碼不一致';
        return res.json(output);
    }

    const [result] = await db.query('UPDATE members SET password = ? WHERE sid = ?', [
        await bcrypt.hash(req.body.newpassword, 8),
        req.body.memberid
    ]);
    if (result.affectedRows == 1) {
        output.success = true;
    }

    res.json(output);
});

//註冊
router.post('/signup', async (req, res) => {
    const output = {
        success: false,
        error: ''
    };

    const hash = await bcrypt.hash(req.body.password, 8);

    //新增會員資料的 sql 語法
    const sql = "INSERT INTO `members`" +
        "(`email`, `password`)" +
        " VALUES (?, ?)";

    //宣告空的變數提供 sql 語法執行後存放結果
    let result;
    try {
        //執行 sql 語法將結果放到 result 中
        [result] = await db.query(sql, [
            req.body.email,
            hash,
        ]);

        //若結果成功筆數=1 表示新增成功
        //繼續新增點數資料
        if (result.affectedRows === 1) {
            output.success = true;

            //新增點數資料的 sql 語法
            const pointSql = "INSERT INTO `member_point`" +
                "(`member_sid`,`change_point`,`change_type`,`left_point`,`change_reason`,`create_at`)" +
                " VALUES (?, ?, ?, ?, ?, NOW())";

            //宣告空的變數提供 sql 語法執行後存放結果
            let pointResult;

            //執行 sql 語法將結果放到 pointResult 中
            [pointResult] = await db.query(pointSql, [
                result.insertId,
                50,
                'GET', // GET : 得到 ; USE : 使用
                50,
                '新進會員贈點'
            ]);

            if (pointResult.affectedRows === 1) {
                output.success = true;
            } else {
                output.success = false;
                output.error = '無法新增點數資料';
            }
        } else {
            output.error = '無法新增會員';
        }
    } catch (ex) {
        output.error = 'Email 已被使用過';
    }

    res.json(output);
});

//讀取會員資料
router.get('/memberprofile', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT * FROM members WHERE sid = ?`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    rs[0].birthday = moment(rs[0].birthday).format('YYYY-MM-DD');

    output.success = true;
    output.data = rs;

    res.json(output);
});

//讀取會員購物車數量
router.get('/member-cart-count', async (req, res) => {
    const output = {
        success: false,
        count: 0
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        return res.json(output);
    }

    const sql = `SELECT * FROM order_temp WHERE Member_id = ?`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    output.success = true;
    output.count = rs.length == 0 ? 0 : rs.reduce((prev, curr) => { return prev + curr.Order_Amount; }, 0);
    
    res.json(output);
});

//讀取會員資料 (忘記密碼)
router.get('/memberprofile/:email', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: null
    }

    const sql = `SELECT * FROM members WHERE email = ?`;
    //get取參數固定為req.params.xxx
    let [rs] = await db.query(sql, [req.params.email]);

    if (!rs.length) {
        output.error = '此 Email 尚未註冊';
        return res.json(output);
    }

    output.success = true;
    output.data = rs[0];

    res.json(output);
});

//讀取會員資料 (點擊密碼重設信件後確認會員資料)
router.post('/memberprofile', async (req, res) => {
    const output = {
        success: false,
        error: '',
        memberid: 0
    }

    const sql = `SELECT * FROM members WHERE email = ? AND password = ?`;
    //post取參數固定為req.body.xxx
    let [rs] = await db.query(sql, [req.body.email, req.body.password]);

    if (!rs.length) {
        output.error = '此為無效連結，請聯繫客服';
        return res.json(output);
    }

    output.success = true;
    output.memberid = rs[0].sid;

    res.json(output);
});

//修改資料
router.post('/edit', async (req, res) => {
    const output = {
        success: false,
        error: ''
    }

    const input = { ...req.body };
    const sql = "UPDATE members SET ? WHERE sid=?";

    let result;

    // 處理修改資料時可能的錯誤
    try {
        [result] = await db.query(sql, [input, input.sid]);
    } catch (ex) {
        output.error = ex.toString();
    }

    if (result.affectedRows === 1 && result.changedRows === 1) {
        output.success = true;
    }
    else {
        output.error = '資料沒有變更';
    }

    res.json(output);
});

// ---------------------歷史訂單-------------------------------
//查詢會員歷史訂單
router.get('/memberorder', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT * FROM order_list WHERE Member_id = ?`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    rs.forEach((value) => {
        value.Created_At = moment(value.Created_At).format('YYYY-MM-DD');
    })

    output.success = true;
    output.data = rs;

    res.json(output);
});

// ---------------------我的評價------------------------------
//查詢我的評價
router.get('/review-data-get/:evaluating', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    let sql = `SELECT od.Order_sid order_id, 
                      od.Review_Level 'level', 
                      od.Review_Description description, 
                      pf.product_id,
                      pf.name product_name, 
                      pf.product_img 
                 FROM order_detail od 
                 JOIN product_food pf on od.Product_id = pf.product_id
                 JOIN order_list ol on od.Order_sid = ol.Order_Sid
                WHERE ol.Member_id = ? `;

    if (req.params.evaluating == 'true') {
        sql += `AND od.Review_Level = 0`;
    } else {
        sql += `AND od.Review_Level > 0`;
    }

    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    output.success = true;
    output.data = rs;

    res.json(output);
});

//儲存我的評價
router.post('/review-data-save', async (req, res) => {
    const output = {
        success: false,
        error: '',
    }

    const sql = `UPDATE order_detail SET Review_Level = ?, Review_Description = ?, Review_Timestamp = NOW() WHERE Order_sid = ? AND Product_id = ?`

    let product = req.body;

    //過濾未填星等資料
    product = product.filter((v) => {
        return v.level > 0;
    })

    try {
        await product.forEach((v) => {
            db.query(sql, [v.level, v.description, v.order_id, v.product_id]);
        })
    } catch (ex) {
        output.error = ex.toString();
        return res.json(output);
    }

    output.success = true;

    res.json(output);
});

// ---------------------會員點數-------------------------------
//查詢會員點數
router.get('/memberpoint', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT * FROM member_point WHERE member_sid = ?
                ORDER BY create_at DESC`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    rs.forEach((value) => {
        value.create_at = moment(value.create_at).format('YYYY-MM-DD');
    })

    output.success = true;
    output.data = rs;

    res.json(output);
});

// ---------------------商品追蹤清單---------------------------
//查詢商品清單商品
router.get('/favorite-product-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: [],
        memberID: 0
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT product.sid,
                        product.product_id,
                        product.name, 
                        product.price, 
                        product.detail_img 
                   FROM member_fav_product member
                   JOIN product_food product on member.product_id = product.sid
                  WHERE member.member_id = ?  
               ORDER BY member.create_at DESC`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    output.success = true;
    output.data = rs;
    output.memberID = req.myAuth.memberid;

    res.json(output);
});

//移除商品追蹤清單商品
router.delete('/favorite-product-delete/:productid', async (req, res) => {
    const output = {
        success: false,
        error: ''
    };
    const sql = `DELETE FROM member_fav_product WHERE product_id = ?`;
    let result;

    // 處理刪除資料時可能的錯誤
    try {
        [result] = await db.query(sql, [req.params.productid]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

//新增商品追蹤清單商品
router.post('/favorite-product-insert', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    if (!req.myAuth || !req.myAuth.memberid) {
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = "INSERT INTO `member_fav_product`" +
        "(`member_id`,`product_id`,`create_at`)" +
        " VALUES (?, ?, NOW())";
    let result;

    // 處理新增資料時可能的錯誤
    try {
        [result] = await db.query(sql, [
            req.myAuth.memberid,
            req.body.productid
        ]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

// ---------------------文章收藏清單---------------------------
//查詢文章收藏清單文章
router.get('/favorite-article-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT article.sid,
                        article.ar_title,
                        article.ar_date,
                        article.ar_pic
                   FROM member_fav_article member
                   JOIN ArtFood article on member.article_id = article.sid
                  WHERE member.member_id = ?  
               ORDER BY member.create_at DESC`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    rs.forEach((value) => {
        value.ar_date = moment(value.ar_date).format('YYYY-MM-DD');
    })

    output.success = true;
    output.data = rs;

    res.json(output);
});

//移除文章收藏清單文章
router.delete('/favorite-article-delete/:articleid', async (req, res) => {
    const output = {
        success: false,
        error: ''
    };
    const sql = `DELETE FROM member_fav_article WHERE article_id = ?`;
    let result;

    // 處理刪除資料時可能的錯誤
    try {
        [result] = await db.query(sql, [req.params.articleid]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

//新增文章收藏清單文章
router.post('/favorite-article-insert', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    if (!req.myAuth || !req.myAuth.memberid) {
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = "INSERT INTO `member_fav_article`" +
        "(`member_id`,`article_id`,`create_at`)" +
        " VALUES (?, ?, NOW())";
    let result;

    // 處理新增資料時可能的錯誤
    try {
        [result] = await db.query(sql, [
            req.myAuth.memberid,
            req.body.articleid
        ]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

// ---------------------餐廳追蹤清單---------------------------
//查詢餐廳清單商品
router.get('/favorite-restaurant-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    //驗證token
    if (!req.myAuth || !req.myAuth.memberid) {
        output.success = false;
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = `SELECT restaurant.res_id,
                        restaurant.res_name,
                        restaurant.res_aveprice,
                        restaurant.res_img
                   FROM member_fav_restaurant member
                   JOIN restaurant restaurant on member.restaurant_id = restaurant.res_id
                  WHERE member.member_id = ?  
               ORDER BY member.create_at DESC`;
    let [rs] = await db.query(sql, [req.myAuth.memberid]);

    output.success = true;
    output.data = rs;

    res.json(output);
});

//移除餐廳追蹤清單商品
router.delete('/favorite-restaurant-delete/:restaurantid', async (req, res) => {
    const output = {
        success: false,
        error: ''
    };
    const sql = `DELETE FROM member_fav_restaurant WHERE restaurant_id = ?`;
    let result;

    // 處理刪除資料時可能的錯誤
    try {
        [result] = await db.query(sql, [req.params.restaurantid]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

//新增餐廳追蹤清單商品
router.post('/favorite-restaurant-insert', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: []
    }

    if (!req.myAuth || !req.myAuth.memberid) {
        output.error = '請先登入';
        return res.json(output);
    }

    const sql = "INSERT INTO `member_fav_restaurant`" +
        "(`member_id`,`restaurant_id`,`create_at`)" +
        " VALUES (?, ?, NOW())";
    let result;

    // 處理新增資料時可能的錯誤
    try {
        [result] = await db.query(sql, [
            req.myAuth.memberid,
            req.body.restaurantid
        ]);
        if (result.affectedRows === 1) {
            output.success = true;
        }
    } catch (ex) {
        output.error = ex.toString();
    }
    res.json(output);
});

//把資料加密成token丟給用戶端
router.post('/login-jwt', async (req, res) => {
    const output = {
        success: false,
        token: null,
    };
    // TODO: 欄位檢查
    const [rs] = await db.query("SELECT * FROM members WHERE `email`=?", [req.body.email]);

    if (!rs.length) {
        // 帳號錯誤
        return res.json(output);
    }

    const success = await bcrypt.compare(req.body.password, rs[0].password);
    if (success) {
        const { id, email } = rs[0];

        output.success = true;
        output.member = { id, email };
        output.token = await jwt.sign({ id, email }, process.env.JWT_SECRET);
    }
    res.json(output);
});

router.get('/get-data-jwt', async (req, res) => {
    const output = {
        success: false,
        data: null
    }

    // 判斷在middleware的時候有沒有通過 jwt 驗證
    if (req.myAuth && req.myAuth.id) {
        output.member = req.myAuth;
        output.success = true;
        output.data = await getListData(req, res);
    } else {
        output.error = '沒有 token或者token不合法';
    }
    res.json(output);
});

module.exports = router;