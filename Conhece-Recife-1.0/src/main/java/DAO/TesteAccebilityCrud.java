package DAO;

import model.Accessibility;
import model.Place;

public class TesteAccebilityCrud {

	public static void main(String[] args) {
		
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
