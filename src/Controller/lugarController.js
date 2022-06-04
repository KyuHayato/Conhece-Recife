const lugaresMongo = require("../Model/lugarModel");
const lugares= require ("../Model/lugarModel.js");


const getAll = (req,res) => {
    console.log (req.url);
      lugares.find (function(err,lugares){
          if(err){
              res.status(500).send ({message:err.message})
          }
          res.status(200).send(lugares);
      });
};


const postLugares = (req,res)=>{
    console.log(req.body);

    let newlugaresMongo = new lugaresMongo(req.body)

    newlugaresMongo.save(function(err){
    if(err) { 
      res.status(500).send({ message: err.message })
    }
    res.status(201).send("Incluído com Sucesso")
  });
};



const deleteLugares = (req, res) => {
    const id = req.params.id;
    try{
      lugaresMongo.find({ id }, function(err, lugares){
        if(lugaresMongo.length > 0){
            lugaresMongo.deleteMany({ id }, function (err) {
                if (!err) {
                  res.status(200).send({ message: 'Lugares removido com sucesso', status: "SUCCESS" })
                }
              })
        }else res.status(200).send({ message: 'Não há lugar para ser removido', status: "EMPTY" })
    })
}catch (err) {
  console.log(err)
  return res.status(424).send({ message: "Erro ao deletar o registro do lugar" })
}
};


const putLugares = (req,res) => {
    const id = req.params.id
    lugaresMongo.updateMany({ id }, { $set : req.body }, { upsert : true }, function(err){
        if (err) {
            res.status(500).send({ message: err.message })
        } else {
            res.status(200).send({ message : "Atualizado com sucesso"})
        }
    })
  }




module.exports = { 
    getAll,
    postLugares,
    deleteLugares,
    putLugares
};