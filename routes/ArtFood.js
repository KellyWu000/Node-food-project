const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtFood = require('../models/ArtFood')

router.get('/ArtFood',async(req,res)=>{
    res.json(await ArtFood.findAll()); //別代參數因為抓整筆
})


// 讀取單筆
router.get('/ArtFood/:id',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    output.data = await  Reslist.findOne(req.params.id);
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );


module.exports = router;