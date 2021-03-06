const { now } = require("moment");
const db = require("./../modules/connect-mysql");
const tableName = "order_temp";
const tableMember="member_detail";
const tableOrderList="order_list";
const tableDetailList="order_detail";
const DField = "Sid";

class Cart {
  constructor(defaultObj = {}) {
    this.data = defaultObj;
  }

 // 讀取 Order_Temp 單一商品 
  static async getList(Product_id) {
    const sql = `SELECT * FROM ${tableName} WHERE Product_id=?`;
    const [rs] = await db.query(sql,[Product_id]);
    if (rs && rs.length === 1) {
      return new Cart(rs[0]);
    }
    return null;
  }


  // 取得 Order_Temp 所有商品
    static async getFullList() {
    const sql=`SELECT ot.Sid,ot.Product_id,ot.Order_Amount,pf.name,pf.price,pf.cate_id,pf.product_img FROM ${tableName} ot LEFT JOIN product_food pf ON ot.Product_id=pf.product_id`;
    const [rs] = await db.query(sql);
    return rs;
  }

  // 取得 Order_Temp 會員所屬商品
  static async getMemberFullList(Member_id) {
    const sql=`SELECT ot.Sid,ot.Member_id,ot.Product_id,ot.Order_Amount,pf.name,pf.price,pf.cate_id,pf.product_img 
    FROM order_temp ot 
    LEFT JOIN product_food pf 
    ON ot.Product_id=pf.product_id 
    WHERE ot.Member_id=?`;
    const [rs] = await db.query(sql,[Member_id]);
    console.log('回傳',Member_id)
    return rs;
  }


  // 加入 Order_temp
   static async addtmpList(Added) {
    const output = {
      success: false,
      error: "",
    };

    // 不要重複輸入資料
    if (await Cart.getList(Added.Product_id)) {
      output.error = "資料重複了";
      return output;
    }

    //參數都必須要有資料
    let obj = {...Added}
    console.log('加入',obj)

    const sql = `INSERT INTO ${tableName} SET ?`;
    const [r] = await db.query(sql, [obj]);

    output.success = !!r.affectedRows ? true : false;

    // 確認是否有成功加入購物車
    output.cartList=await Cart.getList();
    return output;
   }

 
  // 更新 Order_temp
  static async updatetmpList(Sid,Order_Amount) {
    const output = {
      success: false,
      error: "",
    };

    //參數都必須要有資料
    const obj = {
      Sid,
      // Member_id,
      // Product_id,
      Order_Amount,
    };
    const sql = `UPDATE ${tableName} SET ? WHERE ${DField}=?`;
    const [r] = await db.query(sql, [obj, Sid]);

    output.success = !!r.affectedRows ? true : false;

    return output;
   }

  // 刪除 Order_temp 單一商品
  static async removetmpList(Sid){
    const output={
      success:false,
      error:'',
    }
    console.log('刪除的位置',Sid)
    const sql = `DELETE FROM ${tableName} WHERE ${DField}=?`;
    const [r] = await db.query(sql, [Sid]);
    output.success = !!r.affectedRows ? true : false;

    return output;
  }

  // 清空購物車
  static async TruncatetmpList(Member_id){
    const output = {
      success: false,
      error: "",
    };
    const sql = `DELETE FROM ${tableName} WHERE Member_id=?`;
    const [r] = await db.query(sql,[Member_id]);
    output.success = !!r.affectedRows ? true : false;

    return output;

  }


  // 新增 Member_Detail
  static async addListDetail(AddMemberDetail) {

    const output = {
      success: false,
      error: "",
    };


    //參數都必須要有資料
    const obj = {
   ...AddMemberDetail
    };

    const sql = `INSERT INTO ${tableMember} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
    //  output.cartList=await Cart.getListDetail();

     return output;
  }

// 讀取 Member_Detail 訂購人
   static async getListDetail(Order_Sid) {
     console.log('單號',Order_Sid)
    const sql = `SELECT * FROM ${tableMember} WHERE Order_Sid=?`;
    const [rs] = await db.query(sql,[Order_Sid]);
    if (rs && rs.length === 1) {
      return new Cart(rs[0]);
    }
    return null;
  }

  // 刪除 Member_Detail 訂購人
  static async DeleteListDetail(Member_id) {
   const sql = `DELETE FROM ${tableMember} WHERE Member_id=? ORDER BY Created_At DESC LIMIT 1`;
   const [rs] = await db.query(sql,[Member_id]);
   if (rs && rs.length === 1) {
     return new Cart(rs[0]);
   }
   return null;
 }


  // 新增 Order_List
  static async ConfirmList(OrderList) {
    const output = {
      success: false,
      error: "",
    };

       // 不要重複輸入資料
       if (await Cart.getList(OrderList.Order_Sid)) {
        output.error = "資料重複了";
        return output;
      }

          //參數都必須要有資料
    const obj = {
  ...OrderList
    };

    const sql = `INSERT INTO ${tableOrderList} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
     output.cartList=await Cart.getList();

     return output;
  }

  // 新增 Order_Detail 
  static async addDetail(OrderDetail) {
    const output = {
      success: false,
      error: "",
    };


          //參數都必須要有資料
    const obj = {
 ...OrderDetail
    };

    const sql = `INSERT INTO ${tableDetailList} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
    //  output.cartList=await Cart.getList();

     return output;
  }


  // 讀取會員單筆 Order_Detail
  static async getDetail(Order_Sid) {
 
    const sql = `SELECT * FROM order_list WHERE Order_Sid=?`;
    const [r] = await db.query(sql,[Order_Sid]);

    if (r && r.length === 1) {
      return new Cart(r[0]);
    }
    return null;
  }



// 讀取所有 member_point
// static async getMPList() {
//   const sql=`SELECT mp.*,m.email,m.mobile,m.address,m.name FROM member_point mp LEFT JOIN members m ON m.sid=mp.member_sid ORDER BY create_at DESC`;
//   const [rs] = await db.query(sql);
//   return rs;
// }

static async getMPList(Member_id) {
  const sql=`SELECT mp.*,m.email,m.mobile,m.address,m.name FROM member_point mp LEFT JOIN members m ON m.sid=mp.member_sid WHERE mp.member_sid=? ORDER BY create_at DESC`;
  const [rs] = await db.query(sql,[Member_id]);
  return rs;
}

// 新增單筆 member_point
static async modifyPoint(MemberPoint) {

  const output = {
    success: false,
    error: "",
  };

  // create_at=date;
 
//參數都必須要有資料
  const obj = {
   ...MemberPoint
  };

  console.log('會員',obj)

  const sql = `INSERT INTO member_point SET ?`;
  const [r] = await db.query(sql,[obj]);
  output.success = !!r.affectedRows ? true : false;

   return output;
}

// 讀取所有 product
static async getPlist() {
  const sql=`SELECT * FROM product_food`;
  const [rs] = await db.query(sql);
  console.log('讀取')
  return rs;
}

// 新增單筆 Fav_Product
static async FavProduct(sid,member_id,product_id) {

  const output = {
    success: false,
    error: "",
  };
 
//參數都必須要有資料
  const obj = {
    sid,
    member_id,
    product_id,
  };

  const sql = `INSERT INTO member_fav_product SET ?`;
  const [r] = await db.query(sql,[obj]);
  output.success = !!r.affectedRows ? true : false;

   return output;
}

// 刪除單筆 Fav_Product
static async FavProductdel(product_id){
  const output={
    success:false,
    error:'',
  }
  const sql = `DELETE FROM member_fav_product WHERE product_id=?`;
  const [r] = await db.query(sql, [product_id]);
  output.success = !!r.affectedRows ? true : false;

  return output;
}


}

module.exports = Cart;


			