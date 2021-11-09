const express = require('express');
const { JsonWebTokenError } = require('jsonwebtoken');
const Reslist = require('./../models/Reslist');
const router = express.Router();
const jwt = require('jsonwebtoken');


router.get('/',async(req,res)=>{
    res.json(await Reslist.findAll()); 
})


// 讀取單筆 盡量前面再加一個路徑不然會無法辨別 
router.get('/:id',async (req, res) => {
    const output = {
        success: false,
        error: '',
        data: null,
    };
    output.data = await  Reslist.findOne(req.params.id);
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );


router.get('/popular/list',async(req,res)=>{
    res.json(await Reslist.findPopular()); 
})


router.get('/introduce/calories',async(req,res)=>{
    res.json(await Reslist.findCal()); 
})

router.get('/introduce/protein',async(req,res)=>{
    res.json(await Reslist.findPro()); 
})
//接收經緯度
router.post('/address', async (req, res)=>{  
    const lat = req.body.latitude;
    const lng = req.body.longitude;
    const distance = req.body.distance ? req.body.distance : 3;   
    const token=req.myAuth;
    console.log(token);
   
   
    const arr = await Reslist.findRangeByDistance(lat, lng, distance, token);

    const output = {
        success: true,
        data: arr,
    };
    res.json(output)

})





 module.exports = router; 