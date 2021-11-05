//---------------餐廳輪盤---------------
const express = require('express');
const router = express.Router();
const db = require('../modules/connect-mysql');

router.get('/random-restaurant-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: null
    }

    const sql = `SELECT * FROM restaurant`;
    let [rs] = await db.query(sql);

    output.success = true;
    output.data = rs[getRandom(0, rs.length - 1)]
    res.json(output);
});

function getRandom(min, max) {
    return Math.floor(Math.random() * max) + min;
};
//---------------食譜輪盤---------------
router.get('/random-product-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: null
    }

    const sql = `SELECT * FROM product_food`;
    let [rs] = await db.query(sql);

    output.success = true;
    output.data = rs[getRandom(0, rs.length - 1)]
    res.json(output);
});

function getRandom(min, max) {
    return Math.floor(Math.random() * max) + min;
};

module.exports = router