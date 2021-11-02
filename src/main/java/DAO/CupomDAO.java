package DAO;
import java.util.Date;
public class CupomDAO {


		
		private int id_cupom;
		private int codigo;
		private String nome;
		private Date data_de_validade;
	
		public CupomDAO() {
			// TODO Auto-generated constructor stub`
			}
		
		
		

		public int getId_cupom() {
			return id_cupom;
		}

		public void setId_cupom(int id_cupom) {
			this.id_cupom = id_cupom;
		}

		public int getCodigo() {
			return codigo;
		}

		public void setCodigo(int codigo) {
			this.codigo = codigo;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public Date getData_de_validade() {
			return data_de_validade;
		}

		public void setData_de_validade(Date data_de_validade) {
			this.data_de_validade = data_de_validade;
		}




		public void setData_de_validade(int i) {
			// TODO Auto-generated method stub
			
		}

	
}
 