const express=require('express');
const route = express.Router();
const controller = require('../Controller/lugarController');


route.get('/',controller.getAll);

route.post('/enviar',controller.postLugares);

route.delete('/deletar/:id',controller.deleteLugares);

route.put("/atualizar/:id",controller.putLugares);



module.exports= route
