const express = require('express');
const Reslist = require('./../models/Reslist');
const router = express.Router();



router.get('/reslist',async(req,res)=>{
    res.json(await Reslist.findAll()); //別代參數因為抓整筆
})


// 讀取單筆
router.get('/reslist/:id',async (req, res) => {
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



 module.exports = router; //改了router