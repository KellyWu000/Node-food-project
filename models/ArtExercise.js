const db = require('../modules/connect-mysql');
const tableName = 'ArtExercise';
const pkField = 'sid';


class ArtExercise {
    constructor(defaultObj={}) {
        this.data = defaultObj;  
    }
    
/* 讀取全部資料 */
static async findAll(options = {}) {
    let op = {
        perPage: 6,
        page: 1,
        ...options
    }

    const output = {
        perPage: op.perPage,
        page: op.page,
        totalRows: 0,
        totalPages: 0,
        rows: [],
    }

    const t_sql = `SELECT COUNT(1) totalRows FROM ${tableName} `;
    const [t_rs] = await db.query(t_sql)
    const totalRows = t_rs[0].totalRows

    if(totalRows > 0){
        output.totalRows = totalRows; //設定總比數
        output.totalPages = Math.ceil(totalRows / op.perPage); // 拿到所有資料

        const sql = `SELECT * FROM ${tableName} LIMIT ${(op.page - 1) * (op.perPage)}, ${op.perPage}`;
        const [rs] = await db.query(sql);
        output.rows = rs;
    }

    return output;
        }

/* 讀取單筆資料 */
static async findOne(pk=0) {
    const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
    const [rs] = await db.query(sql, pk );

    if (rs && rs.length === 1 ) {
        return new ArtExercise (rs[0])
    } 
    return output;
}

/*熱門文章 */
static async findPopular(options = {}) {
    const sql = `SELECT * FROM ${tableName} WHERE sid IN (4, 5, 6, 7, 3)`;
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


/*給客製化的變瘦 */
static async findLostWeight (options = {}) {
    const sql = `SELECT * FROM ${tableName} WHERE sid IN (2, 3)`;
            const [rs] = await db.query(sql);
            if(rs && rs.length){
                return rs;
            }
            return null;
        }

/*給客製化的增肌 */
static async findMuscle(options = {}) {
    const sql = `SELECT * FROM ${tableName} WHERE sid IN (4, 7)`;
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


module.exports = ArtExercise;


