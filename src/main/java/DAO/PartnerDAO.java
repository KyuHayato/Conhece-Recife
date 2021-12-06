package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.connector.Connector;
import org.apache.catalina.connector.Request;
import org.apache.catalina.connector.RequestFacade;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

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

		String sql = "INSERT INTO parceiro ( nome, categoria, cidade, estado, rua, complemento, cep, bairro, numero, telefone)";
		sql += "VALUES (?,?,?,?,?,?,?,?,?,?)";
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
		preparedStatement.setInt(10, partner.getPhoneNumber());
		preparedStatement.executeUpdate();

		this.fecharConexao();
	}

	public void removePartner(Partner partner) throws SQLException, Exception {

		String sql = "DELETE FROM parceiro WHERE id_parceiro = ? ";
		this.abrirConexao();

		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

		preparedStatement.setInt(1, partner.getId());

		preparedStatement.executeUpdate();

		this.fecharConexao();
	}

	public void updatePartner(Partner partner) throws SQLException, Exception {

		String sql = "UPDATE parceiro SET nome = ?, categoria = ?, "
				+ " cidade = ?,estado = ?, rua = ?, complemento = ?, cep = ?, bairro = ?,"
				+ " numero = ?, telefone = ? WHERE id_parceiro = ? ";
		
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
		preparedStatement.setInt(10, partner.getPhoneNumber());
		preparedStatement.setInt(11, partner.getId());

		preparedStatement.executeUpdate();

		this.fecharConexao();
	}

	public ArrayList<Partner> selectPartner() throws Exception {
		ArrayList<Partner> listPartner = new ArrayList<>();

		// instrução sql correspondente a inserção do aluno
		String sql = " select partner.id_parceiro, partner.nome, partner.categoria, partner.cidade, partner.rua,"
				+ "partner.complemento, partner.cep, partner.bairro, partner.estado,"
				+ "partner.numero, partner.telefone ";
		sql += " from parceiro as partner";
		this.abrirConexao();
		// preparando a instrução
		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
		// executando a instrução sql
		ResultSet resultReader = preparedStatement.executeQuery();
		// lendo os resultados
		while (resultReader.next()) {
			Partner partner = new Partner();

			partner.setId(resultReader.getInt("id_parceiro"));
			partner.setPartnerName(resultReader.getString("nome"));
			partner.setCategory(resultReader.getString("categoria"));
			partner.setCity(resultReader.getString("cidade"));
			partner.setRoad(resultReader.getString("rua"));
			partner.setComplement(resultReader.getString("complemento"));
			partner.setCep(resultReader.getInt("cep"));
			partner.setDistrict(resultReader.getString("bairro"));
			partner.setState(resultReader.getString("estado"));
			partner.setNumber(resultReader.getInt("numero"));
			partner.setPhoneNumber(resultReader.getInt("telefone"));

			listPartner.add(partner);

		}
		// fechando a conexão com o banco de dados
		this.fecharConexao();
		return listPartner;

	}

	public Partner getPartner(int id) throws Exception {

		Partner partner = new Partner();
		String sql = " select partner.id_parceiro, partner.nome, partner.categoria, partner.cidade, partner.rua,"
				+ "partner.complemento, partner.cep, partner.bairro, partner.estado,"
				+ "partner.numero, partner.telefone ";
		sql += " from parceiro as partner";
		this.abrirConexao();
		PreparedStatement preparedStatement = this.conn.prepareStatement(sql);

		preparedStatement.setInt(1, id);
		ResultSet resultReader = preparedStatement.executeQuery();

		while (resultReader.next()) {
			partner.setId(resultReader.getInt("id_parceiro"));
			partner.setPartnerName(resultReader.getString("nome"));
			partner.setCategory(resultReader.getString("categoria"));
			partner.setCity(resultReader.getString("cidade"));
			partner.setRoad(resultReader.getString("rua"));
			partner.setComplement(resultReader.getString("complemento"));
			partner.setCep(resultReader.getInt("cep"));
			partner.setDistrict(resultReader.getString("bairro"));
			partner.setState(resultReader.getString("estado"));
			partner.setNumber(resultReader.getInt("numero"));
			partner.setPhoneNumber(resultReader.getInt("telefone"));

		}
		this.fecharConexao();
		return partner;

	}
}
