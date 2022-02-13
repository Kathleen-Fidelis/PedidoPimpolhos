<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
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

            </div>
        </div>
    </nav>

    <div class="row bodyRow" style="justify-content:space-around;">
        <div class="col-2 navLateral">
            <ul class="navbar-nav menuLateralTab">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Clientes</a>
                </li>
                <hr>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Categorias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Fornecedores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pedidos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Marcas</a>
                </li>
            </ul>
        </div>
        
        
        
        
        <div class="col-9 conteudo">
            <form action="ServletPedido" method="post">

         <c:choose>
			<c:when test="${ pedido == null }">
			<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5; border-radius: 11px; padding: 16px;">
				<label style="margin-right: 17px;">Frete:</label><input type="text" name="cod_frete"/><br>
				<label style="margin-right: 23px;">Endereco:</label><input type="text" name="cod_endereco"/><br>
				<label style="margin-right: 32px;">Cliente:</label><input type="text" name="cod_cliente"/><br>
			    <label style="margin-right: 32px;">Status:</label><input type="text" name="cod_status"/><br>
			    <label style="margin-right: 32px;">Operação:</label><input type="text" name="cod_operacao"/><br>
			    <label style="margin-right: 32px;">Forma Pagamento:</label><input type="text" name="cod_forma_pagamento"/><br>
			    
			    
				<button style="margin-top: 13px;" class="btn btn-primary" type="submit" name="optionPedido" value="insertPedido">Salvar</button>
				</div>
			</c:when>
			<c:otherwise>
			<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5; border-radius: 11px; padding: 16px;">
				<input type="hidden" name="cod_pedido" value="${pedido.cod_pedido}"/><br>
				<label style="margin-right: 17px;">Frete:</label>
				<input type="text" name="cod_frete" value="${pedido.cod_frete}" required/><br>
				<label style="margin-right: 23px;">Endereco:</label>
				<input type="text" name="cod_endereco" value="${pedido.cod_endereco}" required/><br>
				<label style="margin-right: 23px;">Cliente:</label>
				<input type="text" name="cod_cliente" value="${pedido.cod_cliente}"/><br>
				<label style="margin-right: 32px;">Status:</label>
				<input type="text" name="cod_status" value="${pedido.cod_status}"/><br>
				<label style="margin-right: 32px;">Operação:</label>
				<input type="text" name="cod_operacao" value="${pedido.cod_operacao}"/><br>
				<label style="margin-right: 32px;">Forma Pagamento:</label>
				<input type="text" name="cod_forma_pagamento" value="${pedido.cod_forma_pagamento}"/><br>
			
				<button class="btn btn-primary" type="submit" name="optionPedido" value="updatePedido">Atualizar</button>
			</div>
			</c:otherwise>
		</c:choose>
            </form>
        </div>
</body>
</html>