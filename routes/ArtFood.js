const express = require('express');
const db = require('../modules/connect-mysql');
const router = express.Router();
const ArtFood = require('../models/ArtFood')



//讀取全部
router.get('/',async(req,res)=>{
    res.json(await ArtFood.findAll(req.query)); //別代參數因為抓整筆
})

// 讀取單筆
router.get('/:id',async (req, res) => {
    const output = {
        success: false,
        data: null,
    };
    output.data = await ArtFood.findOne(req.params.id);
    if(output.data){
        output.success = true;
    }
    res.json(output);
} );

//讀取熱門文章
router.get('/FoodContent/popluar',async(req,res)=>{
    res.json(await ArtFood.findPopular()); 
})


// 讀取隨機文章
router.get('/FoodContent/relatingArt',async(req,res)=>{
    res.json(await ArtFood.findRand());
})


// 給首頁的隨機文章
router.get('/FoodContent/TwoRandom',async(req,res)=>{
    res.json(await ArtFood.findTwoRand());
})


//問答區，增加問答互動次數
router.post('/QA/:id', async (req, res) => {
    const output = {
        success: false,
        error: ''
    };
    output.myAuth = req.myAuth;
    const input = { ...req.body };
    const sql = "UPDATE `ArtFood` SET `ar_inter` = `ar_inter` + 1 WHERE `sid` = ?";

    let result;

       // 處理修改資料時可能的錯誤
       try {
        [result] = await db.query(sql, [input.sid]);
    } catch (ex) {
        output.error = ex.toString();
    }

    if (result.affectedRows === 1 && result.changedRows === 1) {


        // SELECT SUM(`change_point`) c_points  FROM `member_point` WHERE `member_sid`=53
        const sql1 = "SELECT SUM(`change_point`) c_points  FROM `member_point` WHERE `member_sid`=?";
        const [rs1] = await db.query(sql1, [req.myAuth.memberid]);
        const c_points = Number(rs1[0].c_points);

        const sql2 = "INSERT INTO `member_point` SET `change_point` = 1, `left_point` =?, `change_reason`='專欄問答點數',`change_type`='GET',`member_sid` = ?";
        //const [result2] = await db.query(sql2, [c_points+1, req.myAuth.memberid]);



//                const pointSql = 

// "               INSERT INTO `member_point` SET `change_point` = 1, `left_point` =1, `change_reason`='專欄問答點數',`change_type`='GET',`member_sid` = ?; UPDATE `member_point` SET `change_point` = `change_point`, `left_point` =(SELECT SUM(CASE WHEN `member_sid` =? THEN `change_point` END) `left_point`  FROM member_point)  WHERE `member_sid` =? ";


// SELECT `member_sid`=53, INSERT INTO `member_point` SET `change_point` = 1, SUM(`change_point`)AS`left_point`, `change_reason`='專欄問答點數test',`change_type`='GET', `member_sid` = 53



            //    "UPDATE `member_point` SET `change_point` = `change_point` + 1, `left_point` = `left_point` + 1 WHERE `member_sid` = ?"
       

        let pointResult;
    
        try {
            //[pointResult] = await db.query(pointSql, [req.myAuth.memberid]);
            [pointResult] = await db.query(sql2, [c_points+1, req.myAuth.memberid]);
            output.success = true;
        } catch (ex) {
            output.pointError = ex.toString();
        }
    //     if(pointResult.affectedRows === 1 && pointResult.changedRows === 1)
    
    //     {
    //         const insertpointSql = "INSERT `member_point` SET `change_point` = 1, `left_point` = 1, `change_reason`='專欄問答點數' WHERE `member_sid` = ?";
       
    //     let insertpointResult;
    
    //     try {
    //         [insertpointResult] = await db.query(insertpointSql, [req.myAuth.memberid]);
    //         output.success = true;
    //     } catch (ex) {
    //         output.insertpointError = ex.toString();
    //     }
    // }

    }
    else {
        output.error = '無新增會員點數';
    }

    res.json(output);
});

module.exports = router;