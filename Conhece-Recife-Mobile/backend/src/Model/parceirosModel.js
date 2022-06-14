const mongoose = require('mongoose');

 
const parceirosSchema = new mongoose.Schema({
id : { type : Number,required:true},
nome:{ type : String ,required:true},
categoria:{ type : String,required:true},
cidade:{ type : String ,required:true},
estado:{ type : String ,required:true},
rua:{ type : String ,required:true},
telefone:{ type : Number ,required:true},
complemento:{ type : String},
cep:{ type : String ,required:true},
bairro:{ type : String ,required:true},
numero:{ type : Number ,required:true},
cupom:{ type : Boolean ,required:true},
tipoCupom:{ type : String ,required:true},
descricao:{ type : String ,required:true},

},{
    versionkey: false
});

const parceirosMongo = mongoose.model('parceiros', parceirosSchema);

module.exports = parceirosMongo;