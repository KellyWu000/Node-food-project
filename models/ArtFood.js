const db = require('../modules/connect-mysql');
const tableName = 'ArtFood';
const pkField = 'sid';


class ArtFood {
    constructor(defaultObj={}) {
        this.data = defaultObj;  // 抓讀取的參數
    }


    static async findAll(pk=0) {
        const sql = `SELECT * FROM ${tableName} LIMIT 6`;
                const [rs] = await db.query(sql);
                if(rs && rs.length){
                    return rs;
                }
                return null;
            }

    /* 讀取單筆資料 */
    static async findOne(pk=0) {
        // const sql = `SELECT * FROM ${tableName} WHERE ${pkField}=?`;
        const output = {};

        const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
        const [rs] = await db.query(sql,[pk]);

        if (rs && rs.length) {
            output.ArtFood = rs[0];

            const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
            const [rs2] = await db.query(sql,[pk]);

            output.products = rs2; 
        } else {
            output.ArtFood = [];
        }

        return output;
    }
    toJSON() {
        return this.data;
    }
    toString() {
        return JSON.stringify(this.data, null, 4);
    }



}

module.exports = ArtFood;


