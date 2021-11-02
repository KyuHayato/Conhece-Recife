package DAO;

import DAO.CRUD_cupom;
import DAO.CupomDAO;

public class TesteCupomCrud {
	
	public static void main (String[] args) {
	
	try {
		
		CupomDAO cupom = new CupomDAO();
		cupom.setCodigo(1);
		cupom.setNome("Magazine Luiza");
		cupom.setData_de_validade(23/11/2015);
		
		CRUD_cupom dados = new CRUD_cupom();
		dados.cadastrarCupom(cupom);
		
		System.out.println("executado com sucesso");
	}catch(Exception ex){
		System.out.println(ex .getMessage());
	}
	

}
}