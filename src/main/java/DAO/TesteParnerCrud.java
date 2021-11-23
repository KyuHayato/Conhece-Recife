package DAO;

import model.Partner;



public class TesteParnerCrud {

	public static void main(String[] args) {
		

		try {
			
			Partner partner = new Partner();
			/*
			partner.setPartnerName("SeringaX1");
			partner.setCategory("Teste");
			partner.setCity("Recife");
			partner.setRoad("Janga");
			partner.setComplement("Avenida Triste");
			partner.setCep(574255);
			partner.setDistrict("Pernainba");
			partner.setState("Pernambuco");
			partner.setNumber(76767);
			partner.setPhoneNumber(1232334323);
			
			*/
			//partner.setId(2);
			PartnerDAO dados1 = new PartnerDAO();
			dados1.selectPartner();
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
