const express = require("express");
const { getList } = require("../models/Cart");
const Cart = require("../models/Cart");
const axios = require('axios');

const router = express.Router();

// router.post("/jwt",async(req, res, next) => {
//   // 判斷有沒有通過 jwt 驗證
//   if (req.myAuth && req.myAuth.id) {
//     console.log('有過')
//     next();
//   } else {
//     res.json({success:'false',error:"沒有 token 或者 token 不合法"});
//   }
// });

// 讀取 Product
router.get("/getProduct", async (req, res) => {
  // console.log('讀取第一層')
  res.json(await Cart.getPlist())
});

// 新增 Member Point
router.post("/modifyPoint", async (req, res) => {  
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.modifyPoint(
    req.body
   ))
});

// 讀取 Member Point
router.get("/memberpoint/:id", async (req, res) => {
  res.json(await Cart.getMPList(req.params.id))
});


// 讀取單筆 Order_Temp
router.get("/:id", async (req, res) => {
  res.json(await Cart.getList(req.params.id))
});


// 讀取所有 Order_Temp
router.get("/", async (req, res) => {
  res.json(await Cart.getFullList())
});

// 讀取所屬會員所有 Order_Temp
router.get("/ordertempmember/:id", async (req, res) => {
  res.json(await Cart.getMemberFullList(
    req.params.id
  ))
});


// 新增 Order_Temp
router.post("/", async (req, res) => {
  // req.body.product_id
  // req.body.quantity
  
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.addtmpList(
    req.body))
  });

  
// 修改 Order_Temp
router.put("/:id", async (req, res) => {
  res.json(await Cart.updatetmpList(
    req.params.id,
    req.body.Order_Amount,
    ))

});

// 刪除 Order_Temp
router.delete("/:id", async (req, res) => {
  res.json(await Cart.removetmpList(
    req.params.id,
    ))

});

//清空單一會員 Order_Temp
router.delete("/truncate/:id", async (req, res) => {
  res.json(await Cart.TruncatetmpList(
    req.params.id
  ));

});

// 讀取單筆 Member_Detail
router.get("/addList/:id", async (req, res) => {
  res.json(await Cart.getListDetail(req.params.id))
});


// 新增 Member_Detail
router.post("/addList", async (req, res) => {  
    const output={
      success:'false',
      error:''
    }
    
    res.json(await Cart.addListDetail(
      req.body))
  });


  // 讀取單筆 getDetail
router.get("/getDetail/:id", async (req, res) => {  
  res.json(await Cart.getDetail(req.params.id))
});

// 新增 Order_Detail
router.post("/addDetail", async (req, res) => {  
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.addDetail(
    req.body
   ))
});


// 新增 Order_List
router.post("/ConfirmList", async (req, res) => {
   
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.ConfirmList(
    req.body,
  ))
});

// 新增 Fav_Product
router.post("/FavProduct", async (req, res) => {
   
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.FavProduct(
    req.body.Order_sid,
    req.body.member_id,
    req.body.product_id,
  ))
});

// 刪除 Fav_Product
router.delete("/FavProduct/:id", async (req, res) => {
   

  res.json(await Cart.FavProductdel(
    req.params.id
  ))
});


// 抓取 7-11 資料
router.post('/store', async (req, res) => {

    const params = new URLSearchParams({
      // ...obj,
      commandid: req.body.commandid,
      city: req.body.city,
      town: req.body.town,
      roadname:req.body.roadname,
    });
  
    const response = await axios.post(
      'https://emap.pcsc.com.tw/EMapSDK.aspx',
      params
    );
    // console.log(params.toString())
    res.send(response.data);
 });





module.exports = router;
