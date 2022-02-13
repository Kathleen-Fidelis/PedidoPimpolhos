package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.Pedido;
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
		String optionPedido = request.getParameter("optionPedido");
		if (option == null) {
			option = "Opção Invalida";
		}
		
		if (optionPedido == null) {
			optionPedido = "Opção Invalida";
		}
		
		switch(option) {
			case ("insertFormUsuario"):
				showInsertUser(request, response);
			break;
			case ("updateFormUsuario"):
				showUpdateUser(request, response);
			break;
			case ("updateUsuario"):
				updateUser(request, response);
			break;
			case ("deleteUsuario"):
				deleteUser(request, response);
			break;
			case ("insertUsuario"):
				insertUser(request, response);
			break;
			default:
				selectAllUsers(request, response);
		}
		
//		switch(optionPedido) {
//		case ("insertFormPedido"):
//			showInsertPedido(request, response);
//		break;
//		case ("updateFormPedido"):
//			showUpdatePedido(request, response);
//		break;
//		case ("updatePedido"):
//			updatePedido(request, response);
//		break;
//		case ("deletePedido"):
//			deletePedido(request, response);
//		break;
//		case ("insertPedido"):
//			insertUser(request, response);
//		break;
//		default:
//			selectAllPedido(request, response);
//	}
		
	}
	
// ---------------------------------------------- CLIENTE -----------------------------------------------------------------	
	private void showInsertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher("form.jsp").forward(request, response);
	}
	
	private void showUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Integer id = Integer.parseInt(request.getParameter("cod_cliente"));
		Usuario usuario = this.dao.recuperarUsuario(id);
		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("form.jsp").forward(request, response);
	}
	
	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nomeBack = request.getParameter("nome");
		String cpfBack = request.getParameter("cpf");
		//String nascimentoBack = request.getParameter("nascimento");
		String emailBack = request.getParameter("email");
		String senhaBack = request.getParameter("senha");
		
		if ((nomeBack != null) && (emailBack != null)&&(cpfBack != null) ) {
			if (!nomeBack.equals("")){
				Usuario user1 = new Usuario (nomeBack, cpfBack,null, emailBack,senhaBack);
				this.dao.inserirUsuario(user1);
	}
		}
		response.sendRedirect("ServletPimpolhos");
	}
	
	private void selectAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setAttribute("listUser", this.dao.exibirUsuario());
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idBack = request.getParameter("cod_cliente");
		if (idBack != null) {
			Integer id = Integer.parseInt(idBack);
			this.dao.deletarUsuario(id);
		}
		response.sendRedirect("ServletPimpolhos");
	}
	
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomeBack = request.getParameter("nome");
		String cpfBack = request.getParameter("cpf");
		//String nascimentoBack = request.getParameter("nascimento");
		String emailBack = request.getParameter("email");
		String senhaBack = request.getParameter("senha");
		String idBack = request.getParameter("cod_cliente");
		if ((senhaBack != null) && (cpfBack != null) && (nomeBack != null) && (emailBack != null) && (idBack != null)) {
			if (!nomeBack.equals("")){
				Integer id = Integer.parseInt(idBack);
				Usuario usuario = new Usuario (nomeBack, cpfBack,null,emailBack,senhaBack);
				usuario.setCod_cliente(id);
				this.dao.atualizarUsuario(usuario);
			}
		}
		response.sendRedirect("ServletPimpolhos");
	}

	
// ------------------------------------------- PEDIDO -----------------------------------------------------------------
//	private void showInsertPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		request.getRequestDispatcher("formPedido.jsp").forward(request, response);
//	}
//	
//	private void showUpdatePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		Integer id = Integer.parseInt(request.getParameter("cod_pedido"));
//		Pedido pedido = this.dao.recuperarPedido(id);
//		request.setAttribute("pedido", pedido);
//		request.getRequestDispatcher("formPedido.jsp").forward(request, response);
//	}
//	
//	private void insertPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		Integer frete = Integer.parseInt(request.getParameter("frete"));
//		Integer endereco = Integer.parseInt(request.getParameter("endereco"));
//		Integer cliente = Integer.parseInt(request.getParameter("cliente"));
//		Integer status = Integer.parseInt(request.getParameter("status"));
//		Integer operacao = Integer.parseInt(request.getParameter("operacao"));
//		Integer forma_pagamento = Integer.parseInt(request.getParameter("forma_pagamento"));
//		
//		if ((frete != null) && (endereco != null) && (cliente != null) && (status != null) && (operacao != null) && (forma_pagamento != null) ) {
//			if (!frete.equals("") && !endereco.equals("") && !cliente.equals("") && !status.equals("") && !operacao.equals("") && !forma_pagamento.equals("")){
//				Pedido pedido = new Pedido (frete, endereco, cliente, status, operacao, forma_pagamento);
//				this.dao.inserirPedido(pedido);
//	}
//		}
//		response.sendRedirect("ServletPimpolhos");
//	}
//	
//	private void selectAllPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		
//		request.setAttribute("listaPedido", this.dao.exibirPedido());
//		request.getRequestDispatcher("indexPedido.jsp").forward(request, response);
//	}
//	
//	private void deletePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String id1 = request.getParameter("cod_pedido");
//		if (id1 != null) {
//		Integer id = Integer.parseInt(id1);
//			this.dao.deletarPedido(id);
//		}
//		response.sendRedirect("ServletPimpolhos");
//	}
//	
//	private void updatePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		Integer frete = Integer.parseInt(request.getParameter("frete"));
//		Integer endereco = Integer.parseInt(request.getParameter("endereco"));
//		Integer cliente = Integer.parseInt(request.getParameter("cliente"));
//		Integer status = Integer.parseInt(request.getParameter("status"));
//		Integer operacao = Integer.parseInt(request.getParameter("operacao"));
//		Integer forma_pagamento = Integer.parseInt(request.getParameter("forma_pagamento"));
//		String id1 = request.getParameter("cod_pedido");
//		if ((frete != null) && (endereco != null) && (cliente != null) && (status != null) && (operacao != null) && (forma_pagamento != null) ) {
//			if (!frete.equals("") && !endereco.equals("") && !cliente.equals("") && !status.equals("") && !operacao.equals("") && !forma_pagamento.equals("")){
//				Integer id = Integer.parseInt(id1);
//			Pedido pedido = new Pedido (frete, endereco, cliente, status, operacao, forma_pagamento);
//				pedido.setCod_pedido(id);
//			this.dao.atualizarPedido(pedido);
//			}
//		}
//	response.sendRedirect("ServletPimpolhos");
//	}
}
