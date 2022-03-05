package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import at.favre.lib.crypto.bcrypt.BCrypt;


public class DAOLoginCadastrar {
	
	
	public DAOLoginCadastrar() {
		
	}
	
	//criptografia
	public String codificarSenha(String senha) {
        return BCrypt.withDefaults().hashToString(12, senha.toCharArray());
        
    }
	
	//descriptografia
	public boolean validarSenha(String senha, String senhaCrypto) {
        BCrypt.Result response = BCrypt.verifyer().verify(senha.toCharArray(), senhaCrypto);
        return response.verified;
    }


	
	public void inserirUsuario(UsuarioLogin usuario) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("insert into login (nome , usuario , senha) VALUES (? , ? , ?)");
			p.setString(1, usuario.getNome());
			p.setString(2, usuario.getUsuario());
			p.setString(3, codificarSenha(usuario.getSenha()));
		   
			
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
	
	
	public ArrayList<UsuarioLogin> exibirUsuarioLogin(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<UsuarioLogin> lista = new ArrayList<UsuarioLogin>();
		try {
			PreparedStatement p = con.prepareStatement("select * from login");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				String nome = r.getString("nome");
				String nome_usuario = r.getString("usuario");
				String senha = r.getString("senha");
				Integer cod_usuario = r.getInt("cod_usuario");
			     
				UsuarioLogin usuario = new UsuarioLogin(nome , nome_usuario , senha);
				usuario.setCod_usuario(cod_usuario);
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
	
	
	//Método de conta da home
	public UsuarioLogin qtdUsuarioTotal () {	
	Conexao c = Conexao.getInstance();
	Connection con = c.getConnection();
	UsuarioLogin qtdUsuarioTotal = null;
	
	
		try {
			PreparedStatement p = con.prepareStatement("select count(cod_usuario) as total from login;");
			ResultSet r = p.executeQuery();			
			 r.next();
			
			
			Integer qtdUsuario = r.getInt("total");
			qtdUsuarioTotal = new UsuarioLogin(qtdUsuario);
			qtdUsuarioTotal.setQtdUsuario(qtdUsuario);
		
				
			
			r.close();
			p.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qtdUsuarioTotal;
	}
	
	

	
	public UsuarioLogin conferencia(String nome, String usuario, String senha) {
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		UsuarioLogin user = null;
		try {
			PreparedStatement preStat = connection.prepareStatement("select * from login where usuario = ? ");
			preStat.setString(1, usuario);
			ResultSet resultSet = preStat.executeQuery();
			while(resultSet.next()) {
				String nome1 = resultSet.getString("nome");
				String usuario1 = resultSet.getString("usuario");
				String senha1 = resultSet.getString("senha");
				Integer id1 = resultSet.getInt("cod_usuario");
				if (usuario.equals(usuario1) && this.validarSenha(senha, senha1)) {
					user = new UsuarioLogin(nome1, usuario1, senha1);
					user.setCod_usuario(id1);
					return user;
				} else{
					System.out.println("usuario ou senha invalidos!");}
				}
			}catch (SQLException e) {

				e.printStackTrace();
			}
		return user;
		
		}

}
