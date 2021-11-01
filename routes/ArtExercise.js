const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtExercise = require('../models/ArtExercise')

router.get('/ArtExercise',async(req,res)=>{
    res.json(await ArtExercise.findAll()); //別代參數因為抓整筆
})

module.exports = router;