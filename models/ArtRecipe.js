const db = require('../modules/connect-mysql');
const tableName = 'ArtRecipe';
const pkField = 'sid';


class ArtRecipe {
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
        // const sql = `SELECT * FROM ${tableName} WHERE ${pkField}=?`;
        // const output = {};
        const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
        const [rs] = await db.query(sql, pk );

        if (rs && rs.length === 1 ) {
            // output.ArtRecipe = rs[0];
            return new ArtRecipe(rs[0])

            // const sql = `SELECT * FROM ${tableName} WHERE ${pkField} =?`;
            // const [rs2] = await db.query(sql,[pk]);

            // output.products = rs2; 
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



/*相關產品 */
    async findRelating() {
        if(this.data && this.data.ar_relatingPro){
            const rel = JSON.parse(this.data.ar_relatingPro);

            const sql = `SELECT * FROM product_food WHERE sid IN (${rel.join(',')})`;
            const [rs] = await db.query(sql);

            return rs;

        } else {
            return null;
        }
    }



    toJSON() {
        return this.data;
    }
    toString() {
        return JSON.stringify(this.data, null, 4);
    }

}

module.exports = ArtRecipe;


