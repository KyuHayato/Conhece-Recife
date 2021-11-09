package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Accessibility;

public class AccessibilityDAO {

	public AccessibilityDAO() {
		// TODO Auto-generated constructor stub
	}

	private Connection conn;
	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";
	private static String SENHA = "Rocklee767"; 
	
	private void abrirConexao() {
		try {
			Class.forName(DRIVER_MYSQL).newInstance();
		
			String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
			this.conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	private void fecharConexao() {
		try {
			if (this.conn != null) {
				this.conn.close();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void addAccessibility(Accessibility accessibility) throws SQLException, Exception {

		String sql = "INSERT INTO acessibilidade (tipo)";

		sql += "VALUES (?)";
		this.abrirConexao();

		// preparando a instrucao
		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

		preparedStatement.setString(1, accessibility.getType());
		

		// execute insert SQL stetement
		preparedStatement.executeUpdate();

		this.fecharConexao();
	}
	  public void removeAccessibility(Accessibility accessibility) throws SQLException, Exception {
	      
	        String sql = "DELETE FROM acessibilidade WHERE id_accessibility = ? ";
	        this.abrirConexao();
	        //preparando a instrução
	        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
	       
	        preparedStatement.setInt(1, accessibility.getId());
	       
	        preparedStatement.executeUpdate();
	       
	        this.fecharConexao();
	    }
}
