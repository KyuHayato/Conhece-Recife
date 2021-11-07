package DAO;

import model.Partner;


public class TesteParnerCrud {

	public static void main(String[] args) {
		

		try {
			
			Partner partner = new Partner();
			partner.setPartnerName("Teste a");
			partner.setCategory("Aqudxs");
			partner.setCity("Camaragibe");
			partner.setRoad("Boa Vista");
			partner.setComplement("Avenida Egg");
			partner.setCep(574255);
			partner.setDistrict("Boa Vista");
			partner.setState("Pernambuco");
			partner.setNumber(76767);
			partner.setPhoneNumber(76767);
			
			PartnerDAO dados1 = new PartnerDAO();
			dados1.addPartner(partner);
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
