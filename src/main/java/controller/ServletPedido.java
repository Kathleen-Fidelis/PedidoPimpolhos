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


/**
 * Servlet implementation class ServletPedido
 */
@WebServlet("/ServletPedido")
public class ServletPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPedido() {
        super();
        // TODO Auto-generated constructor stub
        this.dao = new DAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String optionPedido = request.getParameter("optionPedido");
		
		if (optionPedido == null) {
			optionPedido = "Opção Invalida";
		}
		
		switch(optionPedido) {
		case ("detalhePedido"):
			selectAllDetalhePedido(request, response);
		break;
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
//			insertPedido(request, response);
//		break;
		default:
			selectAllPedido(request, response);
	}
		
	}
	
//	private void showInsertPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		request.getRequestDispatcher("formPedido.jsp").forward(request, response);
//	}
	
//	private void showUpdatePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		Integer id = Integer.parseInt(request.getParameter("cod_pedido"));
//		Pedido pedido = this.dao.recuperarPedido(id);
//		request.setAttribute("pedido", pedido);
//		request.getRequestDispatcher("formPedido.jsp").forward(request, response);
//	}
	
	
//	private void showUpdateDetalhePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		Integer id = Integer.parseInt(request.getParameter("cod_pedido"));
//		ArrayList<Pedido> pedido = this.dao.recuperarDetalhePedido(id);
//		request.setAttribute("pedido", pedido);
//		request.getRequestDispatcher("indexDetalhePedido.jsp").forward(request, response);
//	}
//	
	
//	private void insertPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		Integer frete = Integer.parseInt(request.getParameter("cod_frete"));
//		Integer endereco = Integer.parseInt(request.getParameter("cod_endereco"));
//		Integer cliente = Integer.parseInt(request.getParameter("cod_cliente"));
//		Integer status = Integer.parseInt(request.getParameter("cod_status"));
//		Integer operacao = Integer.parseInt(request.getParameter("cod_operacao"));
//		Integer forma_pagamento = Integer.parseInt(request.getParameter("cod_forma_pagamento"));
//		
//		if ((frete != null) && (endereco != null) && (cliente != null) && (status != null) && (operacao != null) && (forma_pagamento != null) ) {
//			if (!frete.equals("") && !endereco.equals("") && !cliente.equals("") && !status.equals("") && !operacao.equals("") && !forma_pagamento.equals("")){
//				Pedido pedido = new Pedido (frete, endereco, cliente, status, operacao, forma_pagamento);
//				this.dao.inserirPedido(pedido);
//	}
//		}
//		response.sendRedirect("ServletPedido");
//	}
	
	private void selectAllPedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("listaPedido", this.dao.exibirPedido());
		request.getRequestDispatcher("indexPedido.jsp").forward(request, response);
	}
	
	
	
	private void selectAllDetalhePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Integer id = Integer.parseInt(request.getParameter("cod_pedido"));
		//ArrayList<Pedido> pedido = this.dao.recuperarDetalhePedido(id);
		request.setAttribute("listaItemDetalhePedido", this.dao.recuperarDetalhePedido(id));
		request.getRequestDispatcher("indexDetalhePedido.jsp").forward(request, response);
	}
	
	
//	private void selectAllDetalhePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		request.setAttribute("listaDetalhePedido", this.dao.exibirDetalhePedido());
//		request.getRequestDispatcher("indexDetalhePedido.jsp").forward(request, response);
//	}
	


}
