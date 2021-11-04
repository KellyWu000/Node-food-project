const express = require('express');
const Product = require('./../models/Product');
const db = require('./../modules/connect-mysql')
const router = express.Router();

// 有設定baseURL是/product, 所以/ 會對應到/product
// 列表
router.get('/', async (req, res) => {
    res.json(await Product.findAll(req.query));
})
// 讀取三筆for 客製化功能

router.get('/customize/', async (req, res) => {
    res.json(await Product.findThree(req.query));
})

// 讀取單筆
router.get('/:id', async (req, res) => {
    const output = {
        success: false,
        data: null,
    }
    // 判斷收藏
    output.data = await Product.findOne(req.params.id)
    if (output.data) {
        output.success = true;
        if (req.myAuth && req.myAuth.memberid) {
            output.data.data.favIndicator = await Product.findMemberFav(req.params.id, req.myAuth.memberid);
        }
    }
    res.json(output)
})

// 讀取單筆
router.get('/fav/:mid', async (req, res) => {
    const output = {
        success: false,
        data: null,
    }

    // 讀取會員收藏商品清單資料
    const sql = "SELECT product_id FROM `member_fav_product` WHERE `member_id`=?";
    let rs;
    [rs] = await db.query(sql, [req.params.mid])
    output.data = rs;
    // if(output.data){
    //     output.success = true;
    //     if()
    // }
/*
    if(req.myAuth && req.myAuth.memberid){
        [rs] = await db.query(sql, [req.myAuth.memberid])

        output.data = rs;
    }
    */
    res.json(output)
})
module.exports = router