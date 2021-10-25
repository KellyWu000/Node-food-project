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
        const sql = `SELECT * FROM ${tableName} WHERE ${pkField}=?`;
        const [rs] = await db.query(sql, [pk]);
        if (rs && rs.length === 1) {
            // return rs[0];
            return new Reslist(rs[0])
        }
        return null;
    }
    toJSON() {
        return this.data;
    }
    toString() {
        return JSON.stringify(this.data, null, 4);
    }
}

module.exports = Reslist;