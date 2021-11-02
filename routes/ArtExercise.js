const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtExercise = require('../models/ArtExercise')

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

module.exports = router;