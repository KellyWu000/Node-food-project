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
    }

    const correct = await bcrypt.compare(req.body.password, rs[0].password);
    if (correct) {
        const { id, email } = rs[0];

        output.success = true;
        output.token = await jwt.sign({ id, email }, process.env.JWT_SECRET);
        output.id = rs[0].sid;
    } else {
        output.success = false;
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
router.get('/memberprofile/:sid', async (req, res) => {
    const sql = `SELECT * FROM members WHERE sid = ?`;
    let [rs] = await db.query(sql, [req.params.sid]);

    rs[0].birthday = moment(rs[0].birthday).format('YYYY-MM-DD');

    if (rs.length > 0) {
        res.json(rs);  //若有查到資料將查到的資料傳回前端
    } else {
        res.redirect('/login'); //如果沒有那筆資料就轉到登入頁
    }
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
// ---------------------商品追蹤清單---------------------------
//查詢商品清單商品
router.get('/favorite-product-get/:memberid', async (req, res) => {
    const sql = `SELECT product.sid,
                        product.name, 
                        product.price, 
                        product.detail_img 
                   FROM member_fav_product member
                   JOIN product_food product on member.product_id = product.sid
                  WHERE member.member_id = ?  
               ORDER BY member.create_at DESC`;
    let [rs] = await db.query(sql, [req.params.memberid]);

    res.json(rs);
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
        error: ''
    };
    const sql = "INSERT INTO `member_fav_product`" +
        "(`member_id`,`product_id`,`create_at`)" +
        " VALUES (?, ?, NOW())";
    let result;

    // 處理新增資料時可能的錯誤
    try {
        [result] = await db.query(sql, [
            req.body.memberid,
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

// ---------------------餐廳追蹤清單---------------------------
//查詢餐廳清單商品
router.get('/favorite-restaurant-get/:memberid', async (req, res) => {
    const sql = `SELECT restaurant.res_id,
                        restaurant.res_name,
                        restaurant.res_aveprice,
                        restaurant.res_img
                   FROM member_fav_restaurant member
                   JOIN restaurant restaurant on member.restaurant_id = restaurant.res_id
                  WHERE member.member_id = ?  
               ORDER BY member.create_at DESC`;
    let [rs] = await db.query(sql, [req.params.memberid]);

    res.json(rs);
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
        error: ''
    };
    const sql = "INSERT INTO `member_fav_restaurant`" +
        "(`member_id`,`restaurant_id`,`create_at`)" +
        " VALUES (?, ?, NOW())";
    let result;

    // 處理新增資料時可能的錯誤
    try {
        [result] = await db.query(sql, [
            req.body.memberid,
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