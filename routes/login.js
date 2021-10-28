const express = require('express');
const bcrypt = require('bcryptjs'); //密碼加密 看登入傳入的密碼跟註冊的密碼是否吻合
const jwt = require('jsonwebtoken');

const db = require('./../modules/connect-mysql');
// const upload = require('./../modules/upload-images');

// const { getListData } = require('./address-book');

const router = express.Router();

// 登入
router.post('/login', async (req, res) => {
    // TODO: 欄位檢查
    //把email拿進來 找到那筆資料（因為是唯一鍵所以只會拿到一筆或沒有）
    const output ={
        success: false,
       
    }
    const [rs] = await db.query("SELECT * FROM members WHERE `email`=?", [req.body.email]);

    if(!rs.length){
        //帳號錯誤
        // return res.json({success:false}); //如果沒有資料就直接回應沒有登入成功
        output.success = false;
    }

    const correct = await bcrypt.compare(req.body.password, rs[0].password)
    if (correct){
        // const{id, email} = rs[0];
        // req.session.member = { id, email};
        output.success = true;
    }else{
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

module.exports = router;