package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import model.Cupom;
import model.Place;

import java.sql.DriverManager;


public class CupomDAO {
	
	private Connection conn;
	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";//driver de conexao. Esta dentro driver mysql que foi baixado
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";//nome do banco de dados que sera consultado
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";//usuario do banco em questao
	private static String SENHA = "Rocklee767";//senha do banco em questao



private void abrirConexao() {
	try {
		Class.forName(DRIVER_MYSQL).newInstance();
		// connection string(string que reune as informacoes necessarias de acesso com o banco), no caso o url sera a string;
		String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
		this.conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);	
	
	} catch (Exception e) {
	System.out.println(e.getMessage());
	}
}

private void fecharConexao() {
	try {
		if (this.conn != null){
			this.conn.close();
		}
	}catch (Exception e) {
		System.out.println(e.getMessage());
		}
	}

public void addCupom(Cupom cupom) throws SQLException,Exception{
	
	//instrucao a ser executada, (insert)
	String sql="INSERT INTO cupom (codigo, nome, data_de_validade)";

	sql+= "VALUES (?,?,?)";
	this.abrirConexao();
	
	//preparando a instrucao
	PreparedStatement preparedStatement =this.conn.prepareStatement(sql);
	
	//passando os valores para os parametros

	preparedStatement.setString(1,cupom.getCode());
	preparedStatement.setString(2,cupom.getName());
	preparedStatement.setDate(3,(java.sql.Date) cupom.getExpirationDate());
	
	//execute insert SQL stetement
	preparedStatement.executeUpdate();
	
	//fechando a conexao com o banco de dados
	this.fecharConexao();
	

}
public void removeCupom(Cupom cupom) throws SQLException, Exception {
    
    String sql = "DELETE FROM parceiro WHERE id_parceiro = ? ";
    this.abrirConexao();
    //preparando a instrução
    PreparedStatement preparedStatement = this.conn.prepareStatement(sql);
   
    preparedStatement.setInt(1, cupom.getId());
   
    preparedStatement.executeUpdate();
   
    this.fecharConexao();
}
}
