const db = require('./../modules/connect-mysql');
const tableName = 'restaurant';
const pkField = 'res_id';


class Reslist {
    constructor(defaultObj={}) {
    
        this.data = defaultObj;  // 抓讀取的參數
    }
 

    static async findAll(options = {}) {

        const sql = `SELECT * FROM ${tableName} `;
        const [rs] = await db.query(sql);
        if (rs && rs.length) {
            return rs;
        }
        return null;
    }


    /* 讀取單筆資料 */
    static async findOne(pk=0) {
        // const sql = `SELECT * FROM ${tableName} WHERE ${pkField}=?`;
        const output = {};

        const sql = `SELECT * FROM restaurant WHERE res_id=?`;
        const [rs] = await db.query(sql,[pk]);

        if (rs && rs.length) {
            output.restaurant = rs[0];

            const sql = `SELECT * FROM res_products  WHERE res_id=? `;
            const [rs2] = await db.query(sql,[pk]);

            output.products = rs2; 
        } else {
            output.resturant = [];
        }

        return output;
    }

    static async findPopular(options = {}) {
      
        const sql = `SELECT * FROM restaurant ORDER BY res_rate DESC LIMIT 8`;
        const [rs] = await db.query(sql);
        if (rs && rs.length) {
            return rs;
        }
        return null;
    }

    static async findCal(options={}){
        const sql=`SELECT * FROM res_products ORDER BY res_products.calories ASC limit 2`;
        const [rs] = await db.query(sql);
        if(rs&& rs.length){
            return rs;
        }
        return null;
    }
    static async findPro(options={}){
        const sql=`SELECT * FROM res_products ORDER BY res_products.protein DESC limit 2`;
        const [rs] = await db.query(sql);
        if(rs&& rs.length){
            return rs;
        }
        return null;
    }

   

  //不用where 用on是因為會影響到原本的列表 只會呈現被收藏過的
    static async findRangeByDistance(lat ,lng , distance, token) {
        const sql = `SELECT r.*, mfr.sid as isLiked, ( 6371 * acos( cos( radians(?) ) * cos( radians(res_lat)) * cos( radians(res_lng ) - radians(?) ) + sin( radians(?) ) * sin( radians( res_lat ) ) ) ) AS distance FROM restaurant r left join member_fav_restaurant mfr on r.res_id = mfr.restaurant_id and mfr.member_id = ? HAVING distance <= ? ORDER BY distance`;

        const memberId = token ? token.memberid : '';
        
        const [rs] = await db.query(sql, [lat, lng, lat, memberId,distance]);
        
     

        if (rs && rs.length) {
            return rs;
        }

        return [];

    }

    toJSON() {
        return this.data;
    }
    toString() {
        return JSON.stringify(this.data, null, 4);
    }
  

  

   

}


module.exports = Reslist;

