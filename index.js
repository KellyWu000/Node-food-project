require('dotenv').config();
const express = require('express')
const db = require('./modules/connect-mysql');
const cors = require('cors');
const jwt = require('jsonwebtoken');

const app = express()



const corsOptions = {
    credentials: true,
    origin: (origin, cb) => {
        console.log(`origin: ${origin}`);
        cb(null, true);
    }
};
    
    app.use( cors(corsOptions) );
  
    
 
    
// app.listen(process.env.PORT);

// app.use(cors(corsOptions));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use('/', express.static(__dirname + '/public'));
//商城路由
app.use('/product', require('./routes/product'));
app.use('/reslist', require('./routes/reslist'));
app.use('/member', require('./routes/member'));
app.use('/cart', require('./routes/cart'));
app.use('/ArtExercise', require('./routes/ArtExercise'));
app.use('/ArtFood', require('./routes/ArtFood'));
app.use('/ArtRecipe', require('./routes/ArtRecipe'));

app.listen(process.env.PORT);
