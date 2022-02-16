package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;

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
	
//	private void deletePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String id1 = request.getParameter("cod_pedido");
//		if (id1 != null) {
//		Integer id = Integer.parseInt(id1);
//			this.dao.deletarPedido(id);
//		}
//		response.sendRedirect("ServletPedido");
//	}
	
//	private void updatePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		Integer frete = Integer.parseInt(request.getParameter("cod_frete"));
//		Integer endereco = Integer.parseInt(request.getParameter("cod_endereco"));
//		Integer cliente = Integer.parseInt(request.getParameter("cod_cliente"));
//		Integer status = Integer.parseInt(request.getParameter("cod_status"));
//		Integer operacao = Integer.parseInt(request.getParameter("cod_operacao"));
//		Integer forma_pagamento = Integer.parseInt(request.getParameter("cod_forma_pagamento"));
//		String id1 = request.getParameter("cod_pedido");
//		if ((frete != null) && (endereco != null) && (cliente != null) && (status != null) && (operacao != null) && (forma_pagamento != null) && (id1 != null)) {
//			if (!frete.equals("") && !endereco.equals("") && !cliente.equals("") && !status.equals("") && !operacao.equals("") && !forma_pagamento.equals("") && !id1.equals("")){
//			Integer id = Integer.parseInt(id1);
//			Pedido pedido = new Pedido (frete, endereco, cliente, status, operacao, forma_pagamento);
//			pedido.setCod_pedido(id);
//			this.dao.atualizarPedido(pedido);
//			}
//		}
//	response.sendRedirect("ServletPedido");
//	}

}
