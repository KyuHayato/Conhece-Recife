const express=require('express');
const route = express.Router();
const controller = require('../Controller/parceiroController');


route.get('/',controller.getAll);
route.get("/cupom", controller.getCupom);
route.get('/parceiros/:bairro',controller.getByBairro);

route.post('/enviar',controller.postParceiros);

route.delete('/deletar/:id',controller.deleteParceiros);

route.put("/atualizar/:id",controller.putParceiros);



module.exports= route
