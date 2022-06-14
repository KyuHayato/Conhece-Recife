const mongoose = require("mongoose")

const DB_URL = "mongodb+srv://ConheceRecife:123@cluster0.lzxx8.mongodb.net/?retryWrites=true&w=majority"


function connect(){
mongoose.connect(
    DB_URL,{
    useNewUrlParser: true
    })
const connection = mongoose.connection
connection.on('error', () => console.error('Erro ao conectar no mongo'))

connection.once('open', () => console.log('🌝 Conectamos ao Mongo'))

}

module.exports = connect