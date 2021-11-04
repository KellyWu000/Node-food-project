const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtExercise = require('../models/ArtExercise')

//讀全部
router.get('/',async(req,res)=>{
    res.json(await ArtExercise.findAll()); //別代參數因為抓整筆
})

// 讀取單筆
router.get('/:id',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    output.data = await ArtExercise.findOne(req.params.id);
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );

//讀取熱門文章
router.get('/ExerciseContent/popluar',async(req,res)=>{
    res.json(await ArtExercise.findPopular()); 
})

// 讀取隨機文章
router.get('/ExerciseContent/relatingArt',async(req,res)=>{
    res.json(await ArtExercise.findRand());
})

// 給客製化的變瘦 
router.get('/article/lostweight',async(req,res)=>{
    res.json(await ArtExercise.findLostWeight()); 
})

// 給客製化的增肌
router.get('/article/muscle',async(req,res)=>{
    res.json(await ArtExercise.findMuscle()); 
})

module.exports = router;