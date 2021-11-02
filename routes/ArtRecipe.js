const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtRecipe = require('../models/ArtRecipe')




//讀取全部
router.get('/',async(req,res)=>{
    res.json(await ArtRecipe.findAll()); //別代參數因為抓整筆
})


// 讀取單筆
router.get('/:id',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    output.data = await ArtRecipe.findOne(req.params.id);
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );

//讀取熱門文章
router.get('/RecipeContent/popluar',async(req,res)=>{
    res.json(await ArtRecipe.findPopular()); 
})

// 讀取相關產品
router.get('/relatingPro/:id',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    const af = await ArtRecipe.findOne(req.params.id);
    // output.data = af;
    output.pop = await af.findRelating();

    console.log(output.data)
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );

module.exports = router;