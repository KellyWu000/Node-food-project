const db = require("./../modules/connect-mysql");

const tableName = "order_temp";
const tableMember="member_detail";
const tableOrderList="order_list";
const tableDetailList="order_detail";
const pkField = "Order_Sid";
const DField = "Sid";
const MemberField="Member_id";

class Cart {
  constructor(defaultObj = {}) {
    this.data = defaultObj;
  }

  // 取得 Order_Temp 所有商品
    static async getFullList() {
    // const sql =  `SELECT ot.*,od.* FROM ${tableName} ot LEFT JOIN order_detail od ON ot.Order_Sid=od.Order_sid;
    // `;
    const sql=`SELECT ot.Sid,ot.Order_Sid,ot.Product_id,ot.Order_Amount,pf.name,pf.price,pf.cate_id FROM ${tableName} ot LEFT JOIN product_food pf ON ot.Product_id=pf.product_id`;
    const [rs] = await db.query(sql);
    return rs;
  }

  // 讀取 Order_Temp 商品 id 
  static async getList(Order_Sid) {
    const sql = `SELECT * FROM ${tableName} WHERE ${pkField}=?`;
    const [rs] = await db.query(sql,[Order_Sid]);
    if (rs && rs.length === 1) {
      return new Cart(rs[0]);
    }
    return null;
  }


  // 加入購物車
   static async addtmpList(Sid,Order_Sid,Member_id,Product_id,Order_Amount) {
    const output = {
      success: false,
      error: "",
    };

    // 不要重複輸入資料
    if (await Cart.getList(Sid)) {
      output.error = "資料重複了";
      return output;
    }

    //參數都必須要有資料
    const obj = {
      Sid,
      Order_Sid,
      Member_id,
      Product_id,
      Order_Amount,
    };

    const sql = `INSERT INTO ${tableName} SET ?`;
    const [r] = await db.query(sql, [obj]);

    output.success = !!r.affectedRows ? true : false;

    // 確認是否有成功加入購物車
    output.cartList=await Cart.getList();
    return output;
   }

 
  // 更新購物車
  static async updatetmpList(Sid,Order_Amount) {
    const output = {
      success: false,
      error: "",
    };

    //參數都必須要有資料
    const obj = {
      // Member_id,
      // Product_id,
      Order_Amount,
    };
    const sql = `UPDATE ${tableName} SET ? WHERE ${DField}=?`;
    const [r] = await db.query(sql, [obj, Sid]);

    output.success = !!r.affectedRows ? true : false;

    return output;
   }

  // 刪除購物車單一品項
  static async removetmpList(Sid){
    const output={
      success:false,
      error:'',
    }
    const sql = `DELETE FROM ${tableName} WHERE ${DField}=?`;
    const [r] = await db.query(sql, [Sid]);
    output.success = !!r.affectedRows ? true : false;

    return output;
  }

  // 清空購物車
  static async TruncatetmpList(){
    const output = {
      success: false,
      error: "",
    };
    const sql = `TRUNCATE TABLE ${tableName}`;
    const [r] = await db.query(sql);
  }


  // 新增 Member_Detail
  static async addListDetail(Sid,Member_id,Order_Name,Order_Phone,E_Mail,Order_Address,Invoice_Type,Invoice_Number,Payment_Type,Order_Remark) {

    const output = {
      success: false,
      error: "",
    };

       // 不要重複輸入資料
       if (await Cart.getListDetail(Sid)) {
        output.error = "資料重複了";
        return output;
      }

          //參數都必須要有資料
    const obj = {
      Sid,
      Member_id,
      Order_Name,
      Order_Phone,
      E_Mail,
      Order_Address,
      Invoice_Type,
      Invoice_Number,
      Payment_Type,
      Order_Remark
    };

    const sql = `INSERT INTO ${tableMember} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
     output.cartList=await Cart.getListDetail();

     return output;
  }

   // 讀取 Member_Detail 訂購人 
   static async getListDetail(Member_id) {
    const sql = `SELECT * FROM ${tableMember} WHERE ${MemberField}=?`;
    const [rs] = await db.query(sql,[Member_id]);
    if (rs && rs.length === 1) {
      return new Cart(rs[0]);
    }
    return null;
  }


  // 新增 Order_List
  static async ConfirmList(Order_Sid,Member_id,Total_Price,Order_Status) {
    const output = {
      success: false,
      error: "",
    };

       // 不要重複輸入資料
      //  if (await Cart.getList(Order_Sid)) {
      //   output.error = "資料重複了";
      //   return output;
      // }

          //參數都必須要有資料
    const obj = {
      Order_Sid,
      Member_id,
      Total_Price,
      Order_Status,
    };

    const sql = `INSERT INTO ${tableOrderList} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
    //  output.cartList=await Cart.getList();

     return output;
  }

  static async addDetail(Sid,Order_Sid,Product_id,Order_Amount,Promotion_Amount,Order_Total) {
    const output = {
      success: false,
      error: "",
    };

       // 不要重複輸入資料
      //  if (await Cart.getList(Order_Sid)) {
      //   output.error = "資料重複了";
      //   return output;
      // }

          //參數都必須要有資料
    const obj = {
      Sid,
      Order_Sid,
      Product_id,
      Order_Amount,
      Promotion_Amount,
      Order_Total,
    };

    const sql = `INSERT INTO ${tableDetailList} SET ?`;
    const [r] = await db.query(sql,[obj]);
    output.success = !!r.affectedRows ? true : false;

     // 確認是否有成功加入購物車
    //  output.cartList=await Cart.getList();

     return output;
  }


}

module.exports = Cart;


			