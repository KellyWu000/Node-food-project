const express = require('express');
const bcrypt = require('bcryptjs'); //密碼加密 看登入傳入的密碼跟註冊的密碼是否吻合
// const jwt = require('jsonwebtoken');

const db = require('./../modules/connect-mysql');
// const upload = require('./../modules/upload-images');

// const { getListData } = require('./address-book');

const router = express.Router();

// 登入
// router.get('/login', (req, res) => {
//     res.locals.pageName = 'login';
//     res.render('login');
// });
// router.post('/login', async (req, res) => {
//     // TODO: 欄位檢查
//     //把email拿進來 找到那筆資料（因為是唯一鍵所以只會拿到一筆或沒有）
//     const [rs] = await db.query("SELECT * FROM members WHERE `email`=?", [req.body.email]);

//     if(!rs.length){
//         //帳號錯誤
//         return res.json({success:false}); //如果沒有資料就直接回應沒有登入成功
//     }

//     //比對密碼
//     const success = await bcrypt.compare(req.body.password,rs[0].password);
//     if(success){
//         const{id, email, nickname} = rs[0];
//         req.session.member = { id, email, nickname};
//     }

//     res.json({ success }); //成功直接success
//     //到http://localhost:3001/login登入試試看
//     //karin@gmail.com  kk
// });

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
        output.error = ex.message;
    }

    res.json(output);
});

// 登出
// router.get('/logout', (req, res) => {
//     delete req.session.member;
//     res.redirect('/');
// });

module.exports = router;