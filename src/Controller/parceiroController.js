const parceirosMongo = require("../Model/parceirosModel.js");
const lugares= require ("../Model/parceirosModel.js");


const getAll = (req,res) => {
    console.log (req.url);
      lugares.find (function(err,lugares){
          if(err){
              res.status(500).send ({message:err.message})
          }
          res.status(200).send(lugares);
      });
};


const postParceiros = (req,res)=>{
    console.log(req.body);

    let newparceirosMongo = new parceirosMongo(req.body)

    newparceirosMongo.save(function(err){
    if(err) { 
      res.status(500).send({ message: err.message })
    }
    res.status(201).send("Incluído com Sucesso")
  });
};



const deleteParceiros = (req, res) => {
    const id = req.params.id;
    try{
      parceirosMongo.find({ id }, function(err, parceiros){
        if(parceirosMongo.length > 0){
            parceirosMongo.deleteMany({ id }, function (err) {
                if (!err) {
                  res.status(200).send({ message: 'Parceiro removido com sucesso', status: "SUCCESS" })
                }
              })
        }else res.status(200).send({ message: 'Não há parceiro para ser removido', status: "EMPTY" })
    })
}catch (err) {
  console.log(err)
  return res.status(424).send({ message: "Erro ao deletar o registro do parceiro" })
}
};


const putParceiros = (req,res) => {
    const id = req.params.id
    parceirosMongo.updateMany({ id }, { $set : req.body }, { upsert : true }, function(err){
        if (err) {
            res.status(500).send({ message: err.message })
        } else {
            res.status(200).send({ message : "Atualizado com sucesso"})
        }
    })
  }




module.exports = { 
    getAll,
    postParceiros,
    deleteParceiros,
    putParceiros
};