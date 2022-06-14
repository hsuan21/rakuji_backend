const express = require('express');
const router = express.Router();
const multer = require('multer');
const db = require("../../modules/mysql_config");
const upload = multer();
const perPage = 8;//每一頁有幾筆
//GET　http://localhost:3001/recipes/box/
router.route('/')
    .get(async (req,res,next)=>{
        const sql = "SELECT * FROM recipeslist";
        const [datas] = await db.query(sql);
       res.json(datas);
    })

    router.route('/abcde')
    .get(async (req,res,next)=>{
        const sql = "SELECT * FROM recipeslist JOIN recipesboxtop2 ON recipesboxtop2.Recipes_ID=recipeslist.RecipesBox_ID";
        const [datas] = await db.query(sql);
       res.json(datas);
    })

    ///////////////////////修改瀏覽次數///////////////////////////
    router.route('/:id')
    .put(upload.none(), async (req,res,next)=>{
        let output = {
            ok:false
        }
        const id = req.params.id;
        console.log(id,req.body.Recipes_Clicks)
        const sql = "UPDATE recipeslist SET Recipes_Clicks=? WHERE Recipes_ID=?";
        const [datas] = await db.query(sql,[req.body.Recipes_Clicks,id]);
        if(datas.affectedRows === 1){
            output.ok = true;
         }
       res.json(output) ;        
    })
    ///////////////////////修改瀏覽次數///////////////////////////

    .post(upload.none(),async (req,res,next)=>{
        const sql = "INSERT INTO recipeslist(Recipes_ID,Recipes_Name,Recipes_Clicks,RecipesPicture) VALUES (?,?,?)";
       // const [datas] = await db.query(sql,[req.body]);
        const [datas] = await db.query(sql,[req.body.Recipes_ID,req.body.Recipes_Name,req.body.Recipes_Clicks,req.body.RecipesPicture]);
        console.log(datas)
        res.send("新增資料")
    })
   

router.route('/:id')
    .get(async (req,res,next)=>{
        const id = req.params.id;
        const sql = "SELECT * FROM recipeslist WHERE Recipes_ID=?";
        const [datas] = await db.query(sql,[id]);
       res.json(datas);
      //  res.send(`讀取${id}的資料`)
    })

    router.route('/abcde/:id')
    .get(async (req,res,next)=>{
        const id = req.params.id;
        const sql = "SELECT * FROM recipeslist WHERE recipeslist.Recipes_ID=?";
        const [datas] = await db.query(sql,[id]);
       res.json(datas);
      //  res.send(`讀取recipesboxcooking${id}的資料`)
    })
    
    .put(upload.none(), async (req,res,next)=>{
        let output = {
            ok:false
        }
        const id = req.params.id;
        const sql = "UPDATE recipeslist SET Recipes_Clicks=? WHERE Recipes_ID=?";
        const [datas] = await db.query(sql,[req.body.RecipesName,req.body.Recipes_Clicks,id]);
        if(datas.affectedRows === 1){
            output.ok = true;
         }
       res.json(output) ;
        
    })
    .delete(async (req,res,next)=>{
        let output = {
            ok:false
        }
        const id = req.params.id;
        const sql = "DELETE FROM recipeslist WHERE Recipes_ID=?";
        const[datas] = await db.query(sql,[id]);
        if(datas.affectedRows === 1){
            output.ok = true;
         }
       res.json(output) ;
    })

module.exports = router;

