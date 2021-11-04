const db = require('../modules/connect-mysql');
const tableName = 'ArtFood';
const pkField = 'sid';


class ArtFood {
    constructor(defaultObj={}) {
        this.data = defaultObj;  
    }

/* 讀取全部資料 */
    static async findAll(options = {}) {
        const sql = `SELECT * FROM ${tableName} LIMIT 6`;
                const [rs] = await db.query(sql);
                if(rs && rs.length){
                    return rs;
                }
                return null;
            }

/* 讀取單筆資料 */
    static async findOne(pk=0) {
        const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
        const [rs] = await db.query(sql, pk );

        if (rs && rs.length === 1 ) {

            return new ArtFood(rs[0])
        } 
        return output;
    }

/*熱門文章 */
static async findPopular(options = {}) {
    const sql = `SELECT * FROM ${tableName} WHERE sid IN (4, 5, 6, 7, 8)`;
            const [rs] = await db.query(sql);
            if(rs && rs.length){
                return rs;
            }
            return null;
        }

/* 隨機文章 */
static async findRand(options = {}) {
    const sql = `SELECT * FROM ${tableName} ORDER BY RAND() LIMIT 3`;
            const [rs] = await db.query(sql);
            if(rs && rs.length){
                return rs;
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

module.exports = ArtFood;


