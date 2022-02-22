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

	public ArrayList<Usuario> exibirDetalhesCliente(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Usuario> listaDetalheCliente = new ArrayList<Usuario>();
		try {
			PreparedStatement p = con.prepareStatement("select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,\r\n"
					+ "cliente.email, \r\n"
					+ "e.nome_rua, e.numero_casa,\r\n"
					+ "e.bairro,\r\n"
					+ "e.complemento,\r\n"
					+ "e.ponto_referencia, \r\n"
					+ "e.cep , \r\n"
					+ "e.nome_cidade,\r\n"
					+ "e2.descricao_estado,\r\n"
					+ "c.nome_titular,\r\n"
					+ "b.descricao_bandeira,\r\n"
					+ "t.ddd,\r\n"
					+ "t.numero_telefone,\r\n"
					+ "tt.descricao_telefone\r\n"
					+ "\r\n"
					+ "from cliente \r\n"
					+ "\r\n"
					+ "\r\n"
					+ "\r\n"
					+ "inner join cliente_telefone ct ON ct.cod_cliente = cliente.cod_cliente \r\n"
					+ "inner join telefone t on t.cod_telefone = ct.cod_telefone \r\n"
					+ "inner join tipo_telefone tt on tt.cod_tipoTelefone = t.cod_tipoTelefone \r\n"
					+ "inner join cartao c on c.cod_cliente = cliente.cod_cliente \r\n"
					+ "inner join bandeira b on b.cod_bandeira = c.cod_bandeira \r\n"
					+ "inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente\r\n"
					+ "inner join endereco e on e.cod_endereco = ec.cod_endereco\r\n"
					+ "inner join estado e2 on e2.cod_estado = e.cod_estado \r\n"
					+ "order by cod_cliente asc ");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer cliente = r.getInt("cod_cliente");
				 String nomecliente = r.getString("nome_cliente");
				 String cpf = r.getString("cpf");
				 Date nasc  = r.getDate	("data_nasc");
				 String email = r.getString("email") ;
				 String rua = r.getString("nome_rua");
				 String numeroCasa = r.getString("numero_casa");
				 String bairro = r.getString("bairro");
				 String complemento = r.getString("complemento");
				 String ptReferencia = r.getString("ponto_referencia");
				 String cep = r.getString("cep");
				 String cidade = r.getString("nome_cidade");
				 String estado = r.getString("descricao_estado");
				 String titularCartao = r.getString("nome_titular");
			     String bandeira = r.getString("descricao_bandeira");
			     String ddd = r.getString("ddd");
			     String telefone = r.getString("numero_telefone");
			     String tipotelefone = r.getString("descricao_telefone");
			     Usuario detalheC = new Usuario(nomecliente, cpf, nasc, email, rua, numeroCasa, cep, complemento, ptReferencia, bairro, cidade, estado, bandeira, titularCartao, ddd, telefone, tipotelefone);
				 detalheC.setCod_cliente(cliente);
			     listaDetalheCliente.add(detalheC);
				
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaDetalheCliente;
	}
	
	public ArrayList<Usuario> exibirUsuarios(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		try {
			PreparedStatement p = con.prepareStatement("select cliente.cod_cliente ,cliente.nome_cliente, cliente.cpf,cliente.data_nasc ,cliente.email from cliente");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer id = r.getInt("cod_cliente");
				String nome = r.getString("nome_cliente");
				String cpf = r.getString("cpf");
			     Date data = r.getDate("data_nasc");
				String email = r.getString("email");
				Usuario usuario = new Usuario(nome, cpf, data, email);
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
	
	public ArrayList<Usuario> recuperarDetalhesCliente (Integer id) {	
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		Usuario detalhes = null;
		ArrayList<Usuario> listDetalhes = new ArrayList<Usuario>();
		try {
			PreparedStatement p = con.prepareStatement("select cliente.cod_cliente,cliente.nome_cliente, cliente.cpf,cliente.data_nasc,cliente.email, e.nome_rua, \r\n"
					+ "e.numero_casa,\r\n"
					+ "e.bairro,\r\n"
					+ "e.complemento,\r\n"
					+ "e.ponto_referencia, \r\n"
					+ "e.cep , \r\n"
					+ "e.nome_cidade,\r\n"
					+ "e2.descricao_estado,\r\n"
					+ "c.nome_titular,\r\n"
					+ "b.descricao_bandeira,\r\n"
					+ "t.ddd,\r\n"
					+ "t.numero_telefone,\r\n"
					+ "tt.descricao_telefone\r\n"
					+ "from cliente \r\n"
					+ "inner join cliente_telefone ct ON ct.cod_cliente = cliente.cod_cliente \r\n"
					+ "inner join telefone t on t.cod_telefone = ct.cod_telefone \r\n"
					+ "inner join tipo_telefone tt on tt.cod_tipoTelefone = t.cod_tipoTelefone \r\n"
					+ "inner join cartao c on c.cod_cliente = cliente.cod_cliente \r\n"
					+ "inner join bandeira b on b.cod_bandeira = c.cod_bandeira \r\n"
					+ "inner join endereco_cliente ec on ec.cod_cliente = cliente.cod_cliente\r\n"
					+ "inner join endereco e on e.cod_endereco = ec.cod_endereco\r\n"
					+ "inner join estado e2 on e2.cod_estado = e.cod_estado where cliente.cod_cliente = ?\r\n"
					+ "order by cod_cliente asc ");
			p.setInt(1, id);
			ResultSet r = p.executeQuery();			
			
			
			while (r.next()) {
				 Integer cliente = r.getInt("cod_cliente");
				 String nomecliente = r.getString("nome_cliente");
				 String cpf = r.getString("cpf");
				 Date nasc  = r.getDate	("data_nasc");
				 String email = r.getString("email") ;
				 String rua = r.getString("nome_rua");
				 String numeroCasa = r.getString("numero_casa");
				 String bairro = r.getString("bairro");
				 String complemento = r.getString("complemento");
				 String ptReferencia = r.getString("ponto_referencia");
				 String cep = r.getString("cep");
				 String cidade = r.getString("nome_cidade");
				 String estado = r.getString("descricao_estado");
				 String titularCartao = r.getString("nome_titular");
			     String bandeira = r.getString("descricao_bandeira");
			     String ddd = r.getString("ddd");
			     String telefone = r.getString("numero_telefone");
			     String tipotelefone = r.getString("descricao_telefone");
			     
			     Usuario detalhecliente = new Usuario(nomecliente, cpf, nasc, email, rua, numeroCasa, cep, complemento, ptReferencia, bairro, cidade, estado, bandeira, titularCartao, ddd, telefone, tipotelefone); 
			     detalhecliente.setCod_cliente(cliente);
			     listDetalhes.add(detalhecliente);
			}
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listDetalhes;
	}
	
	//Método de conta da home
		public Usuario qtdClienteTotal () {	
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		Usuario qtd = null;
		
		
			try {
				PreparedStatement p = con.prepareStatement("select count(cod_cliente) as total from cliente;");
				ResultSet r = p.executeQuery();			
				 r.next();
				
				
				Integer qtdClientes = r.getInt("total");
				qtd = new Usuario(qtdClientes);
				qtd.setQtdCliente(qtdClientes);
			
					
				
				r.close();
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return qtd;
		}	
	
	
	
	
//---------- PEDIDO ------------------------------------------------------------------
	
		public ArrayList<Pedido> exibirPedido(){
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
			try {
				PreparedStatement p = con.prepareStatement("select pedido.cod_pedido, c.nome_cliente, pedido.data_pedido, ip.quantidade, f.descricao_frete, f.valor_frete, sp.descricao_status_pedido, (ip.quantidade * p.preco) + f.valor_frete as valor_total from pedido\r\n"
						+ "inner join cliente c on c.cod_cliente = pedido.cod_cliente\r\n"
						+ "inner join item_pedido ip on ip.cod_item_pedido = pedido.cod_item_pedido\r\n"
						+ "inner join frete f on f.cod_frete = pedido.cod_frete \r\n"
						+ "inner join status_pedido sp on sp.cod_status = pedido.cod_status\r\n"
						+ "inner join produto p on p.cod_produto = ip.cod_produto ORDER BY cod_pedido ASC"
						+ "");
				ResultSet r = p.executeQuery();			
				
				while (r.next()) {
					Integer id = r.getInt("cod_pedido");
					String nomeCliente = r.getString("nome_cliente");
					Date data_pedido = r.getDate("data_pedido");
					Integer quantidade = r.getInt("quantidade");
					String frete= r.getString("descricao_frete");
					String valor_frete = r.getString("valor_frete");
					String status= r.getString("descricao_status_pedido");
					Double valor_total = r.getDouble("valor_total");
					//Boolean flagEND= r.getBoolean("flag_endereco");
					
					Pedido pedido = new Pedido(nomeCliente, data_pedido, quantidade, frete, valor_frete, status, valor_total);
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
		

//		public Pedido recuperarPedido (Integer id) {	
//			Conexao c = Conexao.getInstance();
//			Connection con = c.getConnection();
//			Pedido pedido = null;
//			try {
//				PreparedStatement p = con.prepareStatement("select * from pedido where cod_pedido = ?");
//				p.setInt(1, id);
//				ResultSet r = p.executeQuery();			
//				
//				
//				while (r.next()) {
//					Integer id1 = r.getInt("cod_pedido");
//					String nomeCliente = r.getString("nome_cliente");
//					Date data_pedido = r.getDate("data_pedido");
//					Integer quantidade = r.getInt("quantidade");
//					String frete= r.getString("descricao_frete");
//					String valor_frete = r.getString("valor_frete");
//					String status= r.getString("descricao_status_pedido");
//					Double valor_total = r.getDouble("valor_total");
//					//Boolean flagEND= r.getBoolean("flag_endereco");
//					pedido = new Pedido(nomeCliente, data_pedido, quantidade, frete, valor_frete, status, valor_total);
//					pedido.setCod_pedido(id1);
//				}
//				r.close();
//				p.close();
//				con.close();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			return pedido;
//		}
		
		
		
		public ArrayList<Pedido> exibirDetalhePedido(){
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			ArrayList<Pedido> listaDetalhePedido = new ArrayList<Pedido>();
			try {
				PreparedStatement p = con.prepareStatement("select pedido.cod_pedido, pedido.data_pedido, c.nome_cliente, e.nome_cidade, e.cep, e.nome_rua, e.numero_casa, e.complemento, e.bairro, e.ponto_referencia, e2.descricao_estado, f.descricao_frete, f.valor_frete, sp.descricao_status_pedido, fp.descricao_forma_pagamento, p.nome, p.preco, m.nome_marca, ip.quantidade, (ip.quantidade * p.preco) + f.valor_frete as valor_total from pedido \r\n"
						+ "inner join cliente c on c.cod_cliente = pedido.cod_cliente \r\n"
						+ "inner join endereco e on e.cod_endereco = pedido.cod_endereco \r\n"
						+ "inner join estado e2 on e2.cod_estado = e.cod_estado \r\n"
						+ "inner join frete f on f.cod_frete = pedido.cod_frete \r\n"
						+ "inner join status_pedido sp on sp.cod_status = pedido.cod_status \r\n"
						+ "inner join forma_pagamento fp on fp.cod_forma_pagamento = pedido.cod_forma_pagamento \r\n"
						+ "inner join item_pedido ip on ip.cod_item_pedido = pedido.cod_item_pedido\r\n"
						+ "inner join produto p on p.cod_produto = ip.cod_produto \r\n"
						+ "inner join marca m on m.cod_marca = p.cod_marca\r\n"
						+ "ORDER BY cod_pedido ASC\r\n"
						+ "");
				ResultSet r = p.executeQuery();			
				
				while (r.next()) {
					Integer id = r.getInt("cod_pedido");
					Date data_pedido = r.getDate("data_pedido");
					String nomeCliente = r.getString("nome_cliente");
					String nome_cidade = r.getString("nome_cidade");
					String cep = r.getString("cep");
					String nome_rua = r.getString("nome_rua");
					Integer numero_casa = r.getInt("numero_casa");
					String complemento = r.getString("complemento");
					String bairro = r.getString("bairro");
					String ponto_referencia = r.getString("ponto_referencia");
					String descricao_estado = r.getString("descricao_estado");
					String frete= r.getString("descricao_frete");
					String valor_frete = r.getString("valor_frete");
					String status= r.getString("descricao_status_pedido");
					String descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
					String nome = r.getString("nome");
					Double preco = r.getDouble("preco");
					String nome_marca = r.getString("nome_marca");
					Integer quantidade = r.getInt("quantidade");
					Double valor_total = r.getDouble("valor_total");
					//Boolean flagEND= r.getBoolean("flag_endereco");
					Pedido pedido = new Pedido(data_pedido, nomeCliente, nome_cidade, cep, nome_rua, numero_casa, complemento, bairro, ponto_referencia, descricao_estado, frete, valor_frete, status, descricao_forma_pagamento, nome, preco, nome_marca, quantidade, valor_total);
					pedido.setCod_pedido(id);
					listaDetalhePedido.add(pedido);
				}
				r.close();
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return listaDetalhePedido;
		}
		
		
		public ArrayList<Pedido> recuperarDetalhePedido (Integer id) {	
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			Pedido pedido = null;
			ArrayList<Pedido> listaItemDetalhePedido = new ArrayList<Pedido>();
			
			try {
				PreparedStatement p = con.prepareStatement("select pedido.cod_pedido, pedido.data_pedido, c.nome_cliente, e.nome_cidade, e.cep, e.nome_rua, e.numero_casa, e.complemento, e.bairro, e.ponto_referencia, e2.descricao_estado, f.descricao_frete, f.valor_frete, sp.descricao_status_pedido, fp.descricao_forma_pagamento, p.nome, p.preco, m.nome_marca, ip.quantidade, (ip.quantidade * p.preco) + f.valor_frete as valor_total from pedido \r\n"
						+ "inner join cliente c on c.cod_cliente = pedido.cod_cliente \r\n"
						+ "inner join endereco e on e.cod_endereco = pedido.cod_endereco \r\n"
						+ "inner join estado e2 on e2.cod_estado = e.cod_estado \r\n"
						+ "inner join frete f on f.cod_frete = pedido.cod_frete \r\n"
						+ "inner join status_pedido sp on sp.cod_status = pedido.cod_status \r\n"
						+ "inner join forma_pagamento fp on fp.cod_forma_pagamento = pedido.cod_forma_pagamento \r\n"
						+ "inner join item_pedido ip on ip.cod_item_pedido = pedido.cod_item_pedido\r\n"
						+ "inner join produto p on p.cod_produto = ip.cod_produto \r\n"
						+ "inner join marca m on m.cod_marca = p.cod_marca where cod_pedido = ? \r\n "
						+ "ORDER BY cod_pedido ASC\r\n"
						+ " ");
				p.setInt(1, id);
				ResultSet r = p.executeQuery();			
				
				
				while (r.next()) {
					Integer id1 = r.getInt("cod_pedido");
					Date data_pedido = r.getDate("data_pedido");
					String nomeCliente = r.getString("nome_cliente");
					String nome_cidade = r.getString("nome_cidade");
					String cep = r.getString("cep");
					String nome_rua = r.getString("nome_rua");
					Integer numero_casa = r.getInt("numero_casa");
					String complemento = r.getString("complemento");
					String bairro = r.getString("bairro");
					String ponto_referencia = r.getString("ponto_referencia");
					String descricao_estado = r.getString("descricao_estado");
					String frete= r.getString("descricao_frete");
					String valor_frete = r.getString("valor_frete");
					String status= r.getString("descricao_status_pedido");
					String descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
					String nome = r.getString("nome");
					Double preco = r.getDouble("preco");
					String nome_marca = r.getString("nome_marca");
					Integer quantidade = r.getInt("quantidade");
					Double valor_total = r.getDouble("valor_total");
					//Boolean flagEND= r.getBoolean("flag_endereco");
					Pedido itemPedido = new Pedido(data_pedido, nomeCliente, nome_cidade, cep, nome_rua, numero_casa, complemento, bairro, ponto_referencia, descricao_estado, frete, valor_frete, status, descricao_forma_pagamento, nome, preco, nome_marca, quantidade, valor_total);
					itemPedido.setCod_pedido(id1);
					listaItemDetalhePedido.add(itemPedido);
				}
				r.close();
				p.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return listaItemDetalhePedido;
		}
		
		
		//Método de conta da home
			public Usuario qtdPedidoTotal () {	
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			Usuario qtdTotalPedido = null;
			
			
				try {
					PreparedStatement p = con.prepareStatement("select count(cod_pedido) as total from pedido;");
					ResultSet r = p.executeQuery();			
					 r.next();
					
					
					Integer qtdPedido = r.getInt("total");
					qtdTotalPedido = new Usuario(qtdPedido);
					qtdTotalPedido.setQtdCliente(qtdPedido);
				
						
					
					r.close();
					p.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return qtdTotalPedido;
			}
}