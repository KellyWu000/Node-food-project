require('dotenv').config();
const express= require('express')
const db = require('./modules/connect-mysql');
const cors = require('cors');
const jwt = require('jsonwebtoken');

const app= express()



const corsOptions = {
    credentials: true,
    origin: (origin, cb)=>{
        console.log(`origin: ${origin}`);
        cb(null, true);
    }
};
    
    app.use( cors(corsOptions) );
    app.use(express.urlencoded({ extended: false }));
    app.use(express.json());
    app.use('/',express.static(__dirname + '/public'));
    
    //app.use('/reslist',require('./routes/reslist'));路徑錯誤
     app.use('/reslist',require('./routes/reslist'));
     app.use('/', require('./routes/login'));
     app.use('/cart',require('./routes/cart'));
     app.use('/',require('./routes/ArtExercise'));
     app.use('/',require('./routes/ArtFood'));
     app.use('/',require('./routes/ArtRecipe'));
    //  app.use('/',require('./routes/reslist/:id'));
    
app.listen(process.env.PORT);

