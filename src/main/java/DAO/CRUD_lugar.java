package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import java.sql.DriverManager;

public class CRUD_lugar {

	private Connection conn;
	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";//driver de conexao. Esta dentro driver mysql que foi baixado
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";//nome do banco de dados que sera consultado
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";//usuario do banco em questao
	private static String SENHA = "je83491694";//senha do banco em questao



private void AbrirConexao() {
	try {
		Class.forName(DRIVER_MYSQL).newInstance();
		// connection string(string que reune as informacoes necessarias de acesso com o banco), no caso o url sera a string;
		String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
		this.conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);	
	
	} catch (Exception e) {
	System.out.println(e.getMessage());
	}
}

private void FecharConexao() {
	try {
		if (this.conn != null){
			this.conn.close();
		}
	}catch (Exception e) {
		System.out.println(e.getMessage());
		}
	}

public void cadastrarLugar(LugarDAO b) throws SQLException,Exception{
	
	//instrucao a ser executada, (insert)
	String sql="INSERT INTO lugar ( nome, descricao, cidade, rua, complemento, cep, bairro, estado, numero)";

	sql+= "VALUES (?,?,?,?,?,?,?,?,?)";
	this.AbrirConexao();
	
	//preparando a instrucao
	PreparedStatement preparedStatement =this.conn.prepareStatement(sql);
	
	//passando os valores para os parametros

	preparedStatement.setString(1,b.getNome());
	preparedStatement.setString(2,b.getDescricao());
	preparedStatement.setString(3,b.getCidade());
	preparedStatement.setString(4,b.getRua());
	preparedStatement.setString(5,b.getComplemento());
	preparedStatement.setInt(6,b.getCep());
	preparedStatement.setString(7,b.getBairro());
	preparedStatement.setString(8,b.getEstado());
	preparedStatement.setInt(9,b.getNumero());
	
	
	
	//execute insert SQL stetement
	preparedStatement.executeUpdate();
	
	//fechando a conexao com o banco de dados
	this.FecharConexao();

}
}
