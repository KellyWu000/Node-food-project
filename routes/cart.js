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
    req.body.sid,
    req.body.member_sid,
    req.body.change_point,
    req.body.change_type,
    req.body.left_point,
    req.body.change_reason,
    req.body.create_at,
   ))
});

// 讀取 Member Point
router.get("/memberpoint", async (req, res) => {
  res.json(await Cart.getMPList())
});


// 讀取單筆 Order_Temp
router.get("/:id", async (req, res) => {
  res.json(await Cart.getList(req.params.id))
});


// 讀取所有 Order_Temp
router.get("/", async (req, res) => {
  res.json(await Cart.getFullList())
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
    req.body.Sid,
    req.body.Order_Sid,
    req.body.Member_id,
    req.body.Product_id,
    req.body.Order_Amount))
  });

// 修改 Order_Temp
router.put("/:id", async (req, res) => {
  res.json(await Cart.updatetmpList(
    req.params.id,
    // req.body.Member_id,
    // req.body.Product_id,
    req.body.Order_Amount,
    ))

});

// 刪除 Order_Temp
router.delete("/:id", async (req, res) => {
  res.json(await Cart.removetmpList(
    req.params.id,
    ))

});

//清空 Order_Temp
router.delete("/", async (req, res) => {
  res.json(await Cart.TruncatetmpList());

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
      req.body.Sid,
      req.body.Member_id,
      req.body.Order_Name,
      req.body.Order_Phone,
      req.body.E_Mail,
      req.body.Order_Address,
      req.body.Invoice_Type,
      req.body.Invoice_Number,
      req.body.Payment_Type,
      req.body.Order_Remark,))
  });


// 新增 Order_Detail
router.post("/addDetail", async (req, res) => {  
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.addDetail(
    req.body.Sid,
    req.body.Order_Sid,
    req.body.Product_id,
    req.body.Order_Amount,
    req.body.Promotion_Amount,
    req.body.Order_Total,
   ))
});

// 新增 Order_List
router.post("/ConfirmList", async (req, res) => {
   
  const output={
    success:'false',
    error:''
  }
  
  res.json(await Cart.ConfirmList(
    req.body.Order_Sid,
    req.body.Member_id,
    req.body.Total_Price,
    req.body.Order_Status,
  ))
});


// 抓取 7-11 資料
router.post('/store', async (req, res) => {

    
    const params = new URLSearchParams({
      // ...obj,
      commandid: req.body.commandid,
      city: req.body.city,
      town: req.body.town,
    });
  
    const response = await axios.post(
      'https://emap.pcsc.com.tw/EMapSDK.aspx',
      params
    );
    // console.log(params.toString())
    res.send(response.data);
 });



module.exports = router;
