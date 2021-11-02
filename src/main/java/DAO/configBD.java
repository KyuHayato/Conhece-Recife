package DAO;

//imports necessarios para a conexao com o banco
import java.sql.Connection;


import java.sql.DriverManager;

public class configBD {

	public configBD() {}

	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";
	private static String SENHA = "";

	public static void main(String[] args) {
		try {
			Class.forName(DRIVER_MYSQL).newInstance();
			
			// connection string(string que reune as informacoes necessarias de acesso com o banco), no caso o url sera a string;
			String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
			Connection conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);
			
			System.out.println("Conexao efetuada");
			conn.close();
			System.out.println("Conexao encerrada");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
