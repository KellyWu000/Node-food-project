const db = require('../modules/connect-mysql');

const tableName = 'ArtRecipe';
const pkField = 'sid';


class ArtRecipe {
    static async findAll(pk=0) {
        const sql = `SELECT * FROM ${tableName} LIMIT 6`;
                const [rs] = await db.query(sql);
                if(rs && rs.length){
                    return rs;
                }
                return null;
            }


}

module.exports = ArtRecipe;


