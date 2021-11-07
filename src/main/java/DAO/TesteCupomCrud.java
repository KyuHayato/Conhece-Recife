package DAO;

import DAO.CupomDAO;
import model.Cupom;


public class TesteCupomCrud {
	
	public static void main (String[] args) {
	
	try {
		
		Cupom cupom = new Cupom();
		cupom.setCode("testee234");
		cupom.setName("Magazine Luiza");
		//cupom.setExpirationDate("2015-02-15"); Ainda tem que tranformar o formato de data (SimpleDateFormat
		
		CupomDAO dados = new CupomDAO();
		dados.addCupom(cupom);
		
		System.out.println("executado com sucesso");
	}catch(Exception ex){
		System.out.println(ex .getMessage());
	}
	

}
}