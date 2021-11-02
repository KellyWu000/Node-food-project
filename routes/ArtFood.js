const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtFood = require('../models/ArtFood')



//讀取全部
router.get('/',async(req,res)=>{
    res.json(await ArtFood.findAll()); //別代參數因為抓整筆
})


// 讀取相關文章
router.get('/:id/relatingArt',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    const af = await ArtFood.findOne(req.params.id);
    // output.data = af;
    output.pop = await af.findRelating();

    console.log(output.data)
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );


// 讀取熱門文章
// router.get('/popluar/article',async(req,res)=>{
//     res.json(await ArtFood.findPopular()); 
// })

module.exports = router;