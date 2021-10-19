package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class configBD {

	public configBD() {
		// TODO Auto-generated constructor stub
	}

	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";
	private static String SENHA = "";

	public static void main(String[] args) {
		try {
			Class.forName(DRIVER_MYSQL).newInstance();
			// connection string
			String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
			Connection conn = (Connection) DriverManager.getConnection(url, USUARIO, SENHA);
			System.out.println("Conexão efetuada");
			conn.close();
			System.out.println("Conexão encerrada");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
