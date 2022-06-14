const express=require('express');
const route = express.Router();
const controller = require('../Controller/lugarController');


route.get('/',controller.getAll);
route.get('/lugares/:acessibilidade',controller.getByAcessibilidade);
route.get("/:id", controller.getById);

route.post('/enviar',controller.postLugares);

route.delete('/deletar/:id',controller.deleteLugares);

route.put("/atualizar/:id",controller.putLugares);



module.exports= route
