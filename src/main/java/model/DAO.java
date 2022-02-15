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
	
	
	public ArrayList<Usuario> exibirUsuarios(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		try {
			PreparedStatement p = con.prepareStatement("select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email,cliente.senha ,"
					+ "ec.cod_endereco , \r\n"
					+ "e.nome_rua, e.numero_casa, e.bairro,e.complemento,e.ponto_referencia, e.cep , e.nome_cidade,e2.descricao_estado,ec.flag_endereco from cliente \r\n"
					+ "inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente\r\n"
					+ "inner join endereco e on e.cod_endereco = ec.cod_endereco \r\n"
					+ "inner join estado e2  on e2.cod_estado  =  e.cod_estado  where ec.flag_endereco = 1    \r\n"
					+ " ;\r\n"
					+ "");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer id = r.getInt("cod_cliente");
				String nome = r.getString("nome_cliente");
				String cpf = r.getString("cpf");
			     Date data = r.getDate("data_nasc");
				String email = r.getString("email");
				String nomeRua= r.getString("nome_rua");
				String numerocasa = r.getString("numero_casa");
				String cep = r.getString("cep");
				String complemento = r.getString("complemento");
				String pontoReferencia = r.getString("ponto_referencia");
				String bairro = r.getString("bairro");
				String nome_cidade = r.getString("nome_cidade");
				String estado = r.getString("descricao_estado");
				Usuario usuario = new Usuario(nome, cpf, data, email, nomeRua, numerocasa, cep, complemento, pontoReferencia, bairro, nome_cidade, estado);
				usuario.setCod_cliente(id);
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
				String nomeRua= r.getString("nome_rua");
				String numerocasa = r.getString("numero_casa");
				String cep = r.getString("cep");
				String complemento = r.getString("complemento");
				String pontoReferencia = r.getString("ponto_referencia");
				String bairro = r.getString("bairro");
				String nome_cidade = r.getString("cidade");
				String estado = r.getString("descricao_estado");
				u = new Usuario(nome, cpf, data, email, nomeRua, numerocasa, cep, complemento, pontoReferencia, bairro, nome_cidade, estado);
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
	

	
	
	
	
	
	public ArrayList<Pedido> exibirPedido(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
		try {
			PreparedStatement p = con.prepareStatement("select pedido.cod_pedido, c.nome_cliente, e.cep, e.nome_cidade, e.nome_rua, "
					+ "e.numero_casa, e.complemento, e.bairro, e.ponto_referencia, e2.descricao_estado, f.descricao_frete, f.valor_frete, fp.descricao_forma_pagamento,"
					+ " sp.descricao_status_pedido, ec.flag_endereco from pedido\r\n"
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
