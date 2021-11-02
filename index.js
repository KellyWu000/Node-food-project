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
    },
};

app.use(cors(corsOptions));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use('/', express.static(__dirname + '/public'));

// TopLevel MiddleWare - JWT 驗證
app.use(async (req, res, next) => {
    req.myAuth = null;  // 自訂的屬性 myAuth
    const auth = req.get('Authorization');
    if (auth && auth.indexOf('Bearer ') === 0) {
        const token = auth.slice(7);
        try {
            req.myAuth = await jwt.verify(token, process.env.JWT_SECRET);
            console.log('req.myAuth:', req.myAuth);
        } catch (ex) {
            console.log('jwt-ex:', ex);
        }
    }
    next();
});

//商城路由
app.use('/product', require('./routes/product'));
app.use('/reslist', require('./routes/reslist'));
app.use('/member', require('./routes/member'));
app.use('/cart', require('./routes/cart'));
app.use('/ArtExercise', require('./routes/ArtExercise'));
app.use('/ArtFood', require('./routes/ArtFood'));
app.use('/ArtRecipe', require('./routes/ArtRecipe'));

app.listen(process.env.PORT);