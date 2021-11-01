const express = require('express');
const Reslist = require('./../models/Reslist');
const router = express.Router();



router.get('/',async(req,res)=>{
    res.json(await Reslist.findAll()); //別代參數因為抓整筆
})


// 讀取單筆
router.get('/:id',async (req, res) => {
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


//接收經緯度
router.post('/address', async (req, res)=>{  
    const lat = req.body.latitude;
    const lng = req.body.longitude;
    const distance = req.body.distance ? req.body.distance : 3;   
  

    const arr = await Reslist.findRangeByDistance(lat, lng, distance);

    const output = {
        success: true,
        data: arr,
    };
    res.json(output)

})

//讀取經緯度
//跑迴圈  sql裡的30個座標  
//會迴船一個陣列





 module.exports = router; 