package DAO;

import model.Place;

public class TesteLugarCrud {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)

		try {
			
			Place lugar = new Place();
			lugar.setName("Teste a");
			lugar.setDescription(" Aqu ");
			lugar.setCity("Camaragibe");
			lugar.setRoad("Boa Vista");
			lugar.setComplement("Avenida Egg");
			lugar.setCep(52074255);
			lugar.setDistrict("Boa Vista");
			lugar.setState("Pernambuco");
			lugar.setNumber(76767);
			
			PlaceDAO dados1 = new PlaceDAO();
			dados1.addPlace(lugar);
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
