package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Place;
import java.sql.DriverManager;

public class PlaceDAO {

	private Connection conn;
	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";
	private static String SENHA = "Rocklee767"; //Lembre sempre de colocar sua senha

	//AQUI É ONDE RECEBE OS DADOS INSERIDOS DAS PAGINAS RESPONSAVEIS POR ELES, COMO TesteCupomCrud.java E OU processaNovoLugar.jsp , mandando os dados para o banco. 
	
	/*RESUMO: place é a classe de lugares
		  processaNovoLugar.jsp e TesteCupomCrud.java , sao as classes que recebem os dados e enviam para o crud
		  CRUD_place recebe os dados e envia para o banco	*/
	
	
	
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
	
	public void addPlace(Place place) throws SQLException, Exception {

		String sql = "INSERT INTO lugar ( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)";

		sql += "VALUES (?,?,?,?,?,?,?,?,?)";
		this.abrirConexao();

		// preparando a instrucao
		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

		preparedStatement.setString(1, place.getName());
		preparedStatement.setString(2, place.getDescription());
		preparedStatement.setString(3, place.getCity());
		preparedStatement.setString(4, place.getRoad());
		preparedStatement.setString(5, place.getComplement());
		preparedStatement.setInt(6, place.getCep());
		preparedStatement.setString(7, place.getDistrict());
		preparedStatement.setString(8, place.getState());
		preparedStatement.setInt(9, place.getNumber());

		// execute insert SQL stetement
		preparedStatement.executeUpdate();

		this.fecharConexao();
	}
	  public void removePlace(Place place) throws SQLException, Exception {
	      
	        String sql = "DELETE FROM lugar WHERE id_lugar = ? ";
	        this.abrirConexao();
	        //preparando a instrução
	        PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
	       
	        preparedStatement.setInt(1, place.getId());
	       
	        preparedStatement.executeUpdate();
	       
	        this.fecharConexao();
	    }
}
