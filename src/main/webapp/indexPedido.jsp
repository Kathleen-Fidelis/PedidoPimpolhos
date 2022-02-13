<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Pimpolhos</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="col-12 navHamb">
                    <ul class="navbar-nav menuLateralTab">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#">Meu perfil</a>
                        </li>
                        <hr>
                        <li class="nav-item">
                            <a class="nav-link clientes " aria-current="page" href="#">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link categorias" href="#">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link produtos" href="#">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fornecedores" href="#">Fornecedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pedidos" href="#">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link marcas" href="#">Marcas</a>
                        </li>
                    </ul>
                </div>
            </div>
            </div>
        </div>
    </nav>
		
    <div class="row bodyRow" style="justify-content:space-around;">
        <div class="col-2 navLateral">
            <ul class="navbar-nav menuLateralTab">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Menu</a>
                </li>
                <hr>
                <li class="nav-item">
                    <a class="nav-link clientes " aria-current="page" href="index.jsp">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link categorias" href="#">Categorias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link produtos" href="#">Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fornecedores" href="#">Fornecedores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link pedidos" href="indexPedido.jsp">Pedidos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link marcas" href="#">Marcas</a>
                </li>
            </ul>
        </div>
        
        
        
        
        <div class="col-md-12 col-lg-9 conteudo">
        	<form action="ServletPedido" method="post">
				<a href="formPedido.jsp"><button type="submit" name="optionPedido" value="insertFormPedido">Cadastrar Pedido</button></a>
			</form>
        
          <div class = "table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cod. Pedido</th>
                        <th>Frete</th>
                        <th>Endereço</th>
                        <th>Cliente</th>
                        <th>Status</th>
                        <th>Operação</th>
                        <th>Forma de pagamento</th>
                               
                      
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pedido" items="${listaPedido}">
                        <tr>
                            
                            <form action="ServletPedido" method="post">
                                <td>
                                    <c:out value="${pedido.cod_pedido}"/>
                                    <input type="hidden" name="cod_pedido" value="${pedido.cod_pedido}"/>
                                </td>
                                <td><c:out value="${pedido.cod_frete}"/></td>
                                <td><c:out value="${pedido.cod_endereco}"/></td>
                                <td><c:out value="${pedido.cod_cliente}"/></td>
                                <td><c:out value="${pedido.cod_status}"/></td>
                                <td><c:out value="${pedido.cod_operacao}"/></td>
                               <td> <c:out value="${pedido.cod_forma_pagamento}"/></td>
                               <td>
								<button type="submit" name="optionPedido" value="deletePedido">Deletar</button>
								<button type="submit" name="optionPedido" value="updateFormPedido">Atualizar</button>
							  </td>
                               
                            </form>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>