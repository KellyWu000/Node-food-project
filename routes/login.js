const express = require('express');
const bcrypt = require('bcryptjs'); //密碼加密 看登入傳入的密碼跟註冊的密碼是否吻合
const jwt = require('jsonwebtoken');

const db = require('./../modules/connect-mysql');
// const upload = require('./../modules/upload-images');

// const { getListData } = require('./members');

const router = express.Router();

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

// 註冊
router.post('/signup', async (req, res) => {
    const output = {
        success: false,
        postData: req.body,
        error: ''
    };
    // // TODO: 欄位檢查
    const hash = await bcrypt.hash(req.body.password, 8);
    const sql = "INSERT INTO `members`" +
        "(`email`, `password`)" +
        " VALUES (?, ?)";
    let result;
    try {
        [result] = await db.query(sql, [
            req.body.email,
            hash,
        ]);
        if (result.affectedRows === 1) {
            output.success = true;
        } else {
            output.error = '無法新增會員';
        }
    } catch (ex) {
        console.log(ex);
        output.error = 'Email 已被使用過';
    }
    res.json(output);
});

//登出
router.get('/logout', (req, res) => {
    delete req.session.member;
    res.redirect('/');
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

router.get('/memberprofile/:sid', async (req, res) => {
    const sql = `SELECT * FROM members WHERE sid = ?`;
    const [rs] = await db.query(sql, [req.params.sid]);

    if (rs.length > 0 ) { 
        res.json(rs);  //若有查到資料將查到的資料傳回前端
    } else {
        res.redirect('/login'); //如果沒有那筆資料就轉到登入頁
    }
});

//修改資料
router.route('/edit/:sid')
    .get(async (req, res) => { //呈現要修改資料的表單 如果沒有資料就呈現列表頁
        
    })
    .post(async (req, res) => {
        // TODO: 欄位檢查
        const output = {
            success: false,
            postData: req.body,
        }

        const input = { ...req.body };
        const sql = "UPDATE `members` SET ? WHERE sid=?";
        let result = {};
        // 處理修改資料時可能的錯誤
        try {
            [result] = await db.query(sql, [input, req.params.sid]);
        } catch (ex) {
            output.error = ex.toString();
        }
        output.result = result;
        if (result.affectedRows === 1) {
            if (result.changedRows === 1) {
                output.success = true;
            } else {
                output.error = '資料沒有變更';
            }
        }

        res.json(output);
    });

module.exports = router;