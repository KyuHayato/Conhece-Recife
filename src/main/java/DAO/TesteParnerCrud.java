package DAO;

import model.Partner;
import model.PhoneNumber;


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
			
			
			PartnerDAO dados1 = new PartnerDAO();
			//dados1.addPartner(partner);
			PhoneNumber numero = new PhoneNumber();
			numero.setPhoneNumber("1243");
			numero.getPartner().setId(1);
			dados1.addPhone(numero);
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
