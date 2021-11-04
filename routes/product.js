const express = require('express');
const Product = require('./../models/Product');

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
    output.data = await Product.findOne(req.params.id)
    if (output.data) {
        output.success = true;
        if (req.myAuth && req.myAuth.memberid) {
            output.data.data.favIndicator = await Product.findMemberFav(req.params.id, req.myAuth.memberid);
        }
    }
    res.json(output)
})

module.exports = router