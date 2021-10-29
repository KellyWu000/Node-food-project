const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtRecipe = require('../models/ArtRecipe')

router.get('/ArtRecipe',async(req,res)=>{
    res.json(await ArtRecipe.findAll()); //別代參數因為抓整筆
})

module.exports = router;