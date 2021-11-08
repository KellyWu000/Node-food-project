const express = require('express');
const router = express.Router();
const db = require('../modules/connect-mysql');

//---------------餐廳輪盤---------------
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

//---------------食譜輪盤---------------
router.get('/random-artrecipe-get', async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: null
    }

    const sql = `SELECT * FROM ArtRecipe`;
    let [rs] = await db.query(sql);

    output.success = true;
    output.data = rs[getRandom(0, rs.length - 1)]
    res.json(output);
});

function getRandom(min, max) {
    return Math.floor(Math.random() * max) + min;
};

module.exports = router