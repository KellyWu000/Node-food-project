const db = require('./../modules/connect-mysql');
const tableName = 'restaurant';
const pkField = 'res_id';

class Reslist {
    constructor(defaultObj={}) {
    
        this.data = defaultObj;  // 抓讀取的參數
    }
    //     constructor(defaultObj={}) {

    //         this.data = defaultObj;
    //     }


    //  static async findAll(options={}){
    //         let op = {
    //             perPage: 6,
    //             page: 1,
    //             orderBy: '',
    //             category: null,
    //             priceLow: 0,
    //             priceHigh: 0,
    //             keyword: '',
    //             ...options
    //         };
    //         const output = {
    //             perPage: op.perPage,
    //             page: op.page,
    //             totalRows: 0,
    //             totalPages: 0,
    //             rows: [],
    //         };
    //         let where = ' WHERE 1 ';
    // if(op.category){
    //     where += ' AND category_sid=' + parseInt(op.category) + ' ';
    // }
    // if(op.keyword){
    //     where += ' AND bookname LIKE ' + db.escape('%' + op.keyword + '%') + ' ';
    // }
    // if(op.priceLow){
    //     where += ' AND price >= ' + parseInt(op.priceLow) + ' ';
    // }
    // if(op.priceHigh){
    //     where += ' AND price <= ' + parseInt(op.priceHigh) + ' ';
    // }


    //         const t_sql = `SELECT COUNT(1) totalRows FROM ${tableName} ${where}`; 
    //         const [t_rs] = await db.query(t_sql);
    //         console.log( [t_rs])
    //         const totalRows = t_rs[0].totalRows;//總比數

    //         if(totalRows>0){
    //             output.totalRows = totalRows;
    //             output.totalPages = Math.ceil(totalRows/op.perPage);
    //             const sql = `SELECT * FROM ${tableName} ${where} LIMIT ${(op.page-1) * op.perPage}, ${op.perPage}`;
    //             const [rs] = await db.query(sql);
    //             output.rows = rs;
    //         }

    //         return output;
    //     }

    // }

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

            const sql = `SELECT * FROM res_products  WHERE res_id=?`;
            const [rs2] = await db.query(sql,[pk]);

            output.products = rs2; 
        } else {
            output.resturant = [];
        }

        return output;
    }

    toJSON() {
        return this.data;
    }
    toString() {
        return JSON.stringify(this.data, null, 4);
    }
    // TODO : 轉成JS  POW Math.sin COS  asin sqrt round  ok 
    // TODO: lat1,lng1 => 前端來的座標 呼叫 
    // TODO: lat2,lng2 => SQL來的座標   
    // TODO: 算出目前位置跟餐廳的距離
    // TODO: 把距離用res傳回前端  已經算好的距離回去 
    //TODO 前端再篩選 再做預設

    static GetDistance(lat1, lng1, lat2, lng2){
        function rad(d){
            return d * Math.PI() / 180.0;
        }
    
        const EARTH_RADIUS = 6378.137;
        let radLat1 = rad(lat1);
        let radLat2 = rad(lat2);
        let a = radLat1 - radLat2;
        let b = rad(lng1) - rad(lng2);
        let s = 2 * Math.asin()(Math.sqrt(Math.pow(Math.sin(a /2), 2)+Math.cos(radLat1) * cos(radLat2)) * Math.pow(Math.sin(b/ 2), 2));

        s = s * EARTH_RADIUS;
        s =Math.round()(s * 10000) / 10000;
        return s;
    }

    //矩形
    static SquareDistance(){
        let 
    }

}


module.exports = Reslist;

