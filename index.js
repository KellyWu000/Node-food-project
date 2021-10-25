require('dotenv').config();
const express= require('express')
const db = require('./modules/connect-mysql');
const cors = require('cors');

const app= express()



const corsOptions = {
    credentials: true,
    origin: (origin, cb)=>{
        console.log(`origin: ${origin}`);
        cb(null, true);
    }
};
    
    app.use( cors(corsOptions) );
  
    
    //app.use('/reslist',require('./routes/reslist'));路徑錯誤
     app.use('/',require('./routes/reslist'));
    //  app.use('/',require('./routes/reslist/:id'));
    
app.listen(process.env.PORT);

