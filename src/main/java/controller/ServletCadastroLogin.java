package controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.UsuarioLogin;
import model.DAOLoginCadastrar;

/**
 * Servlet implementation class ServletCadastroLogin
 */
@WebServlet("/ServletCadastroLogin")
public class ServletCadastroLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private DAOLoginCadastrar dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCadastroLogin() {
        super();
        // TODO Auto-generated constructor stub
        this.dao = new DAOLoginCadastrar();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String optionLogin = request.getParameter("optionLogin");
		if (optionLogin == null) {
			optionLogin = "Opção Invalida";
		}
		switch(optionLogin) {
			case ("insertUsuario"):
				inserirUsuarios(request, response);
			break;
		}
	}
 
	
	private void inserirUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nomeCompletoUsuarioBack = request.getParameter("nome");
		String nomeUsuarioBack = request.getParameter("usuario");
		String senhaBack = request.getParameter("senha");
		String senhaBack2 = request.getParameter("senha2");
		
		
			if (nomeCompletoUsuarioBack != null && nomeUsuarioBack != null && senhaBack != null && senhaBack2 != null) {
				if (!nomeCompletoUsuarioBack.equals("") && !nomeUsuarioBack.equals("") && !senhaBack.equals("") && !senhaBack2.equals("")){
					//if (senhaBack.equals(senhaBack2)) {
						System.out.print("Senha correta");
						UsuarioLogin usuario = new UsuarioLogin(nomeCompletoUsuarioBack ,nomeUsuarioBack , senhaBack );
						//this.dao.conferencia(nomeCompletoUsuarioBack, nomeUsuarioBack, senhaBack2);
						this.dao.inserirUsuario(usuario);
					
					//}
				}
			}
			response.sendRedirect("home.jsp");
		
	}	
}
