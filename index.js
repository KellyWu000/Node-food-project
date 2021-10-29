require('dotenv').config();
const express = require('express')
const db = require('./modules/connect-mysql');
const cors = require('cors');

const app = express()



const corsOptions = {
    credentials: true,
    origin: (origin, cb) => {
        console.log(`origin: ${origin}`);
        cb(null, true);
    }
};

app.use(cors(corsOptions));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use('/', express.static(__dirname + '/public'));




app.use('/reslist', require('./routes/reslist'));
app.use('/', require('./routes/login'));
//  app.use('/',require('./routes/reslist/:id'));

app.listen(process.env.PORT);

