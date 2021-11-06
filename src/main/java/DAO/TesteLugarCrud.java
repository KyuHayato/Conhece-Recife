package DAO;

import model.Place;

public class TesteLugarCrud {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)
		/*aqui é onde sera inserido os dados assim como em um form, entao ele  manda os dados do objeto lugar para o objeto dados logo a baixo, chegando na pagina de crud que faz a 
		conexao com o banco enviando os dados aqui ou no form, registrados*/
		
		//A pag processanNovoLugar faz esse mesmo processo porem pegando os dados do formulario,atraves de request e nao manualmente como aqui
		try {
			
			Place lugar = new Place();
			lugar.setName("JEFFFFFFFF");
			lugar.setDescription(" Aqu ");
			lugar.setCity("Camaragibe");
			lugar.setRoad("Boa Vista");
			lugar.setComplement("Avenida Egg");
			lugar.setCep(52074255);
			lugar.setDistrict("Boa Vista");
			lugar.setState("Pernambuco");
			lugar.setNumber(76767);
			
			
			//manda os dados do objeto lugar para o objeto dados
			CRUD_place dados1 = new CRUD_place();
			dados1.addPlace(lugar);
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
