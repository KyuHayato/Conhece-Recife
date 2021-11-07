package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Partner;

public class PartnerDAO {

	private Connection conn;
	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";
	private static String SENHA = "Rocklee767"; // Lembre sempre de colocar sua senha

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

	public void addPartner(Partner partner) throws SQLException, Exception {

		String sql = "INSERT INTO parceiro ( nome, categoria, cidade, estado, rua, complemento, cep, bairro, numero)";

		sql += "VALUES (?,?,?,?,?,?,?,?,?)";
		this.abrirConexao();


		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

		preparedStatement.setString(1, partner.getPartnerName());
		preparedStatement.setString(2, partner.getCategory());
		preparedStatement.setString(3, partner.getCity());
		preparedStatement.setString(4, partner.getState());
		preparedStatement.setString(5, partner.getRoad());
		preparedStatement.setString(6, partner.getComplement());
		preparedStatement.setInt(7, partner.getCep());
		preparedStatement.setString(8, partner.getDistrict());
		preparedStatement.setInt(9, partner.getNumber());
	

		// execute insert SQL stetement
		preparedStatement.executeUpdate();
		
		String sql2 = "INSERT INTO telefone (telefone)";

		sql2 += "VALUES (?)";
		preparedStatement = this.conn.prepareStatement(sql2);
		preparedStatement.setInt(10, partner.getPhoneNumber());
		
		preparedStatement.executeUpdate();
		
		this.fecharConexao();
		
	}
}
