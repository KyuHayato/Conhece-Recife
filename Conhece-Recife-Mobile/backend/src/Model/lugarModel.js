const mongoose = require('mongoose');

 
const lugaresSchema = new mongoose.Schema({
id : { type : Number,required:true},
nome:{ type : String ,required:true},
descricao:{ type : String,required:true},
cidade:{ type : String ,required:true},
rua:{ type : String ,required:true},
estado:{ type : String ,required:true},
complemento:{ type : String},
cep:{ type : String ,required:true},
bairro:{ type : String ,required:true},
numero:{ type : Number ,required:true},
acessibilidade:{ type : String ,required:true},
},{
    versionkey: false
});

const lugaresMongo = mongoose.model('lugares', lugaresSchema);

module.exports = lugaresMongo;