package DAO;

import model.Accessibility;
import model.Place;

public class TesteAccebilityCrud {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)
		/*aqui é onde sera inserido os dados assim como em um form, entao ele  manda os dados do objeto lugar para o objeto dados logo a baixo, chegando na pagina de crud que faz a 
		conexao com o banco enviando os dados aqui ou no form, registrados*/
		
		//A pag processanNovoLugar faz esse mesmo processo porem pegando os dados do formulario,atraves de request e nao manualmente como aqui
		try {
			
			Accessibility accessibility = new Accessibility();
			accessibility.setType("JEFFFFFFFF");
			
			
			
			//manda os dados do objeto lugar para o objeto dados
			AccessibilityDAO dados1 = new AccessibilityDAO();
			dados1.addAccessibility(accessibility);
			
			System.out.println("executado com sucesso");
		}catch(Exception ex){
			System.out.println(ex .getMessage());
		}
	
	}

}
