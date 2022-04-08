package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAOLoginCadastrar;
import model.UsuarioLogin;

/**
 * Servlet implementation class ServletLogin2
 */
@WebServlet("/ServletLogin2")
public class ServletLogin2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	DAOLoginCadastrar dao = new DAOLoginCadastrar();
    UsuarioLogin usuarioLogin = new UsuarioLogin();
    int r;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin2() {
        super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		
		String optionLogin = request.getParameter("optionLogin");
		
		if (optionLogin == null) {
			optionLogin = "Op��o Invalida";
		}
		
		//testarUsuario(request, response);
		
		switch(optionLogin) {
			case ("Entrar"):
				conferencia(request, response);
			break;
		}
	}
		
	protected void conferencia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String usuario = request.getParameter("usuario");
			String senha = request.getParameter("senha");
			
			if(dao.conferencia(usuario, senha) != null) {
				UsuarioLogin user = dao.conferencia(usuario, senha); 
				request.getServletContext().setAttribute("usuario", user.getUsuario()); 
				
				//request.getRequestDispatcher("index.jsp").forward(request, response);
				request.getRequestDispatcher("ServletQuantidade").forward(request, response);
				
			} else {
				String message="Email ou Senha inválidos";
				request.setAttribute("message", message);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
	}
	
	

}

