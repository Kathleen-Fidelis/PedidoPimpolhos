package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {

	public DAO() {
		
	}
	
	// ------------------------------------------- CLIENTE -----------------------------------------------------------------
	
	public void inserirUsuario (Usuario usuario) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("insert into cliente (nome_cliente,cpf,data_nasc,email,senha) values (?, ? ,?,?, ?)");
			p.setString(1, usuario.getNome());
		    p.setString(2, usuario.getCpf());
			//p.setDate(3,(Date) usuario.getNascimento());
			p.setString(4, usuario.getEmail());
		    p.setString(5, usuario.getSenha());
			
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Comando executado");
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Usuario> exibirUsuario(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		try {
			PreparedStatement p = con.prepareStatement("select * from cliente");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer id = r.getInt("cod_cliente");
				String nome = r.getString("nome_cliente");
				String cpf = r.getString("cpf");
			     Date data = r.getDate("data_nasc");
				String email = r.getString("email");
				String senha = r.getString("senha");
				Usuario usuario = new Usuario(nome,cpf,data,email,senha);
				usuario.setCod_cliente(id);;
				lista.add(usuario);
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}
	
	public void deletarUsuario(Integer id) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("delete from cliente where cod_cliente = ?");
			p.setInt(1, id);
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Comando executado");
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//public void updateUser(Integer id, String newName) {
	public void atualizarUsuario(Usuario usuario) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("update cliente set nome_cliente =? , cpf =?, data_nasc= ?,email =?, senha =?  where cod_cliente = ? ");
			p.setString(1, usuario.getNome());
			p.setString(2, usuario.getCpf());
		 //  p.setDate(3, (Date) usuario.getNascimento());
			p.setString(3, usuario.getEmail());
			p.setString(4, usuario.getSenha());
			p.setInt(5, usuario.getCod_cliente());
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Comando executado");
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Usuario recuperarUsuario (Integer id) {	
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		Usuario u = null;
		try {
			PreparedStatement p = con.prepareStatement("select * from cliente where cod_cliente = ?");
			p.setInt(1, id);
			ResultSet r = p.executeQuery();			
			
			
			while (r.next()) {
				Integer id1 = r.getInt("cod_cliente");
				String nome = r.getString("nome_cliente");
				String cpf = r.getString("cpf");
		        Date data = r.getDate("data_nasc");
				String email = r.getString("email");
				String senha = r.getString("senha");
				u = new Usuario(nome, cpf, data, email, senha);
				u.setCod_cliente(id1);
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	
//  --------------------------------------------- PEDIDO ------------------------------------------------------------------
	
//	public void inserirPedido (Pedido pedido) {
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("insert into pedido (cod_frete, cod_endereco, cod_cliente, cod_status, cod_operacao, cod_forma_pagamento) values (?, ?, ?, ?, ?, ?)");
//			p.setInt(1, pedido.getCod_frete());
//		    p.setInt(2, pedido.getCod_endereco());
//			p.setInt(3, pedido.getCod_cliente());
//			p.setInt(4, pedido.getCod_status());
//		    p.setInt(5, pedido.getCod_operacao());
//		    p.setInt(6, pedido.getCod_forma_pagamento());
//			System.out.println(p);
//			p.executeUpdate();
//			System.out.println("Comando executado");
//			p.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//	
//	public ArrayList<Pedido> exibirPedido(){
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
//		try {
//			PreparedStatement p = con.prepareStatement("select * from pedido");
//			ResultSet r = p.executeQuery();			
//			
//			while (r.next()) {
//				Integer id = r.getInt("cod_pedido");
//				Integer frete = r.getInt("cod_frete");
//				Integer endereco = r.getInt("cod_endereco");
//				Integer cliente = r.getInt("cod_cliente");
//				Integer status = r.getInt("cod_status");
//				Integer operacao = r.getInt("cod_operacao");
//				Integer forma_pagamento = r.getInt("cod_forma_pagamento");
//				Pedido pedido = new Pedido(frete, endereco, cliente, status, operacao, forma_pagamento);
//				pedido.setCod_pedido(id);
//				listaPedido.add(pedido);
//			}
//			r.close();
//			p.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return listaPedido;
//	}
//	
//	public void deletarPedido(Integer id) {
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("delete from pedido where cod_pedido = ?");
//			p.setInt(1, id);
//			System.out.println(p);
//			p.executeUpdate();
//			System.out.println("Comando executado");
//			p.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
//	
//	public void atualizarPedido(Pedido pedido) {
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("update pedido set cod_frete = ? , cod_endereco = ?, cod_cliente = ?, cod_status = ?, cod_operacao = ?, cod_forma_pagamento = ?  where cod_pedido = ? ");
//			p.setInt(1, pedido.getCod_frete());
//		    p.setInt(2, pedido.getCod_endereco());
//			p.setInt(3, pedido.getCod_cliente());
//			p.setInt(4, pedido.getCod_status());
//		    p.setInt(5, pedido.getCod_operacao());
//		    p.setInt(6, pedido.getCod_forma_pagamento());
//		    p.setInt(7, pedido.getCod_pedido());
//			System.out.println(p);
//			p.executeUpdate();
//			System.out.println("Comando executado");
//			p.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	public Pedido recuperarPedido (Integer id) {	
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		Pedido pedido = null;
//		try {
//			PreparedStatement p = con.prepareStatement("select * from pedido where cod_pedido = ?");
//			p.setInt(1, id);
//			ResultSet r = p.executeQuery();			
//			
//			
//			while (r.next()) {
//				Integer id1 = r.getInt("cod_pedido");
//				Integer frete = r.getInt("cod_frete");
//				Integer endereco = r.getInt("cod_endereco");
//				Integer cliente = r.getInt("cod_cliente");
//				Integer status = r.getInt("cod_status");
//				Integer operacao = r.getInt("cod_operacao");
//				Integer forma_pagamento = r.getInt("cod_forma_pagamento");
//				pedido = new Pedido(frete, endereco, cliente, status, operacao, forma_pagamento);
//				pedido.setCod_pedido(id1);
//			}
//			r.close();
//			p.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return pedido;
//	}
	
	
	
	
	
	public ArrayList<Pedido> exibirPedido(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
		try {
			PreparedStatement p = con.prepareStatement("select pedido.cod_pedido, c.nome_cliente, e.cep, e.nome_cidade, e.nome_rua, e.numero_casa, e.complemento, e.bairro, e.ponto_referencia, e2.descricao_estado, f.descricao_frete, f.valor_frete, fp.descricao_forma_pagamento, sp.descricao_status_pedido, ec.flag_endereco from pedido\r\n"
					+ "inner join cliente c on c.cod_cliente = pedido.cod_cliente\r\n"
					+ "inner join endereco e on e.cod_endereco = pedido.cod_endereco\r\n"
					+ "inner join estado e2 on e2.cod_estado = e.cod_estado\r\n"
					+ "inner join frete f on f.cod_frete = pedido.cod_frete \r\n"
					+ "inner join forma_pagamento fp on fp.cod_forma_pagamento = pedido.cod_forma_pagamento\r\n"
					+ "inner join status_pedido sp on sp.cod_status = pedido.cod_status \r\n"
					+ "inner join endereco_cliente ec on ec.cod_endereco = e.cod_endereco where ec.flag_endereco = 1 ORDER BY cod_pedido ASC;\n"
					+ "");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer id = r.getInt("cod_pedido");
				String nomeCliente = r.getString("nome_cliente");
				String cep = r.getString("cep");
				String cidade = r.getString("nome_cidade");
				String rua = r.getString("nome_rua");
				Integer numerocasa = r.getInt("numero_casa");
				String complemento = r.getString("complemento");
				String bairro= r.getString("bairro");
				String refencia= r.getString("ponto_referencia");
				String estado= r.getString("descricao_estado");
				String frete= r.getString("descricao_frete");
				String valor_frete = r.getString("valor_frete");
				String formaPagamento= r.getString("descricao_forma_pagamento");
				String status= r.getString("descricao_status_pedido");
				Boolean flagEND= r.getBoolean("flag_endereco");
				
				Pedido pedido = new Pedido(nomeCliente, cep, cidade, rua, numerocasa, complemento, bairro, refencia, estado, frete, valor_frete, formaPagamento, status, flagEND);
				pedido.setCod_pedido(id);
				listaPedido.add(pedido);
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaPedido;
	}
	

	public Pedido recuperarPedido (Integer id) {	
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		Pedido pedido = null;
		try {
			PreparedStatement p = con.prepareStatement("select * from pedido where cod_pedido = ?");
			p.setInt(1, id);
			ResultSet r = p.executeQuery();			
			
			
			while (r.next()) {
				Integer id1 = r.getInt("cod_pedido");
				String nomeCliente = r.getString("nome_cliente");
				String cep = r.getString("cep");
				String cidade = r.getString("nome_cidade");
				String rua = r.getString("nome_rua");
				Integer numerocasa = r.getInt("numero_casa");
				String complemento = r.getString("complemento");
				String bairro= r.getString("bairro");
				String refencia= r.getString("ponto_referencia");
				String estado= r.getString("descricao_estado");
				String frete= r.getString("descricao_frete");
				String valor_frete = r.getString("valor_frete");
				String formaPagamento= r.getString("descricao_forma_pagamento");
				String status= r.getString("descricao_status_pedido");
				Boolean flagEND= r.getBoolean("flag_endereco");
				pedido = new Pedido(nomeCliente, cep, cidade, rua, numerocasa, complemento, bairro, refencia, estado, frete, valor_frete, formaPagamento, status, flagEND);
				pedido.setCod_pedido(id1);
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pedido;
	}
	
	
	
}
