package DAO;

import DAO.CRUD_lugar;
import DAO.LugarDAO;

public class TesteLugarCrud {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)

		try {
			
			LugarDAO lugar = new LugarDAO();
			lugar.setNome("cinema sao luiz");
			lugar.setDescricao("Diversao");
			lugar.setCidade("Recife");
			lugar.setRua("Boa Vista");
			lugar.setComplemento("Avenida");
			lugar.setCep(52074255);
			lugar.setBairro("Boa Vista");
			lugar.setEstado("Pernambuco");
			lugar.setNumero(3333);
			
			CRUD_lugar dados1 = new CRUD_lugar();
			dados1.cadastrarLugar(lugar);
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
