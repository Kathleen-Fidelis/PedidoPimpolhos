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
                        <th>Nome</th> 
                        <th>cep</th>
                        <th> cidade</th>
                        <th>rua</th>
                        <th>casa</th>
                        <th>complemento</th>
                        <th>bairro</th>
                        <th>ponto_referencia</th>
                        <th>descricao_estado</th>
                        <th>descricao_frete</th>
                        <th>valor_frete</th>
                        <th>descricao_forma_pagamento</th>
                        <th>descricao_status</th>

                               
                      
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
                                <td><c:out value="${pedido.nome_cliente}"/></td>
                                <td><c:out value="${pedido.cep}"/></td>
                                <td><c:out value="${pedido.nome_cidade}"/></td>
                                <td><c:out value="${pedido.nome_rua}"/></td>
                                <td><c:out value="${pedido.numero_casa}"/></td>
                               	<td> <c:out value="${pedido.complemento}"/></td>
                               	<td> <c:out value="${pedido.bairro}"/></td>
                               	<td> <c:out value="${pedido.ponto_referencia}"/></td>
                               	<td> <c:out value="${pedido.descricao_estado}"/></td>
                               	<td> <c:out value="${pedido.descricao_frete}"/></td>
                               	<td> <c:out value="${pedido.valor_frete}"/></td>
                               	<td> <c:out value="${pedido.descricao_forma_pagamento}"/></td>
                               	<td> <c:out value="${pedido.descricao_status}"/></td>
                               
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