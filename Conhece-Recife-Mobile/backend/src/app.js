const express=require('express');
const app = express();
const bodyParser=require("body-parser");
var path = require('path');

const connect=require('./database');

const parceiros = require('./Routes/parceirosRoutes');
const parceirosMongo=('./model/parceirosModel.js');

const lugares = require('./Routes/lugarRoutes');
const lugaresMongo=('./model/lugarModel.js');


connect();


app.use(express.json());
app.use(bodyParser.urlencoded({extended:true}));



app.use(function(req, res, next) {
    res.header("Access-control-Allow-Origin", "*")
    res.header(
     "Access-control-Allow-headers",
     "origin, x-Requested-with, content-type, Accept"
      )
      next()
})
 
app.use('/parceiros',parceiros);
app.use('/lugares',lugares);
 
module.exports = app