const parceirosMongo = require("../Model/parceirosModel.js");
const parceiros= require ("../Model/parceirosModel.js");


const getAll = (req,res) => {
    console.log (req.url);
      parceiros.find (function(err,lugares){
          if(err){
              res.status(500).send ({message:err.message})
          }
          res.status(200).send(lugares);
      });
};

const getCupom = (req, res) => {
  parceirosMongo.find({ cupom: true }, function (err, parceiros) {
      if (err) {
          res.status(500).send({ message: err.message })
      } else {
          res.status(200).send(parceiros)
      }
  })
}

const getByBairro = (req, res) => {
  const bairro = req.params.bairro;
    parceirosMongo.find({bairro},'nome categoria cidade rua estado complemento cep bairro numero cupom tipoCupom descricao telefone  ',function(err,parceiros){
      if(err){
        res.status(500).send('Não temos o registro')
      }else
        return res.status(200).send(parceiros);
    })
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
    getCupom,
    getByBairro,
    postParceiros,
    deleteParceiros,
    putParceiros
};