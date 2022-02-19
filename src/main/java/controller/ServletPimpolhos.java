package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.Pedido;
import model.Produto;
import model.Usuario;

/**
 * Servlet implementation class ServletPimpolhos
 */
@WebServlet("/ServletPimpolhos")
public class ServletPimpolhos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPimpolhos() {
        super();
        this.dao = new DAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getParameter("option");
		if (option == null) {
			option = "Opção Invalida";
	
		}
	switch(option) {
////			case ("insertFormUsuario"):
////				showInsertUser(request, response);
////			break;
////			case ("updateFormUsuario"):
////				showUpdateUser(request, response);
////			break;
////			case ("updateUsuario"):
////				updateUser(request, response);
////			break;
////			case ("deleteUsuario"):
////				selectAllUsers(request, response);
////			break;
			case ("cartaoSelecionado"):
				System.out.println("Entrou no Switch");
			selectAllDetalhesCliente (request, response);
		break;
		default:
			selectAllUsers(request, response);
		}
		
//	
	}
	
// ---------------------------------------------- CLIENTE -----------------------------------------------------------------	


	private void selectAllUsers (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		request.setAttribute("listUser", this.dao.exibirUsuarios());
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	private void selectAllDetalhesCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Integer id = Integer.parseInt(request.getParameter("cod_cliente"));
		System.out.println(id);
		request.setAttribute("listDetalhes",this.dao.recuperarDetalhesCliente(id));
		request.getRequestDispatcher("detalhesCliente.jsp").forward(request, response);
	}

	
	
	
	
//private void selectAllCard (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//	
//	
//	System.out.println("Entrou");
//        
//		request.setAttribute("listDetalhes", this.dao.exibirDetalhesCliente());
//		request.getRequestDispatcher("detalhesCliente.jsp").forward(request, response);
//	}
	
	
}
