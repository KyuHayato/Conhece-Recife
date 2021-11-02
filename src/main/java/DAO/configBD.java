package DAO;

//imports necessarios para a conexao com o banco
import java.sql.Connection;


import java.sql.DriverManager;

public class configBD {

	public configBD() {
		// TODO Auto-generated constructor stub
		//configuracao Banco de Dados
	}

	private static String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";//driver de conexao. Esta dentro driver mysql que foi baixado
	private static String LOCAL_SERVIDOR = "localhost";
	private static String BANCO_DE_DADOS = "conhece_recife";//nome do banco de dados que sera consultado
	private static String PORTA_BANCO = "3306";
	private static String USUARIO = "root";//usuario do banco em questao
	private static String SENHA = "je83491694";//senha do banco em questao

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
