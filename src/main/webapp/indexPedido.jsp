<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

	<input type="checkbox" id="nav-toggle">
    <div class="sidebar">
        <div class="sidebar-brand">
            <h2><span class="las "></span> <span>Pimpolhos</span></h2>
        </div>

        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="home.jsp" >
                        <span class="icon"> Home </span></a>
                </li>
                

                <li>
                    <a href="ServletPimpolhos
                    " >
                        <img src="imgs/user (1).png" class="icon"><span class="icon "> Clientes</span></a>
                </li>

 				<li>
                    <a href="ServletCategoria
                    ">
                        <img src="imgs/categories.png" class="icon"><span class="icon "> Categorias </span></a>
                </li>
                
                <li>
                    <a href="ServletPedido
                    " class="active">
                        <img src="imgs/pedido.png" class="icon"><span class="icon "> Pedidos </span></a>
                </li>

                <li>
                    <a href="ServletFornecedor
                    ">
                        <img src="imgs/fornecedor.png" class="icon"><span class="icon "> Fornecedores </span></a>
                </li>
                <li>
                    <a href="ServletMarca
                    ">
                        <img src="imgs/etiqueta.png" class="icon"><span class="icon "> Marcas </span></a>
                </li>
                <li>
                    <a href="ServletProduto
                    ">
                        <img src="imgs/produto.png" class="icon"><span class="icon "> Produtos </span></a>
                </li>
            </ul>

        </div>
    </div>


    <div class="main-content">
        <div class="header-info">
            <h2>
                <label for="nav-toggle">
                    <span class="las "><img src="imgs/menu-aberto (1).png" ></span>
                </label>
                Dashboard
            </h2>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="procure aqui" />
            </div>

            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                    <small>Beb�s Reborn</small>
                </div>
            </div>
        </div>



<<<<<<< HEAD
	<div class="tabela">
=======
	<div class="tabela" >
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
		<div class="col-md-12 col-lg-9 conteudo">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Cod. Pedido</th>
							<th style="word-wrap: break-word; min-width: 130px; max-width: 160px;">Nome cliente</th>
							<th style="word-wrap: break-word; min-width: 122px; max-width: 160px;">Data pedido</th>
							<th style="word-wrap: break-word; min-width: 122px; max-width: 160px;">Quantidade</th>
							<th style="word-wrap: break-word; min-width: 130px; max-width: 160px;">Tipo de envio</th>
							<th style="word-wrap: break-word; min-width: 130px; max-width: 160px;">Valor do frete</th>
							<th>Status pedido</th>
							<th>Valor total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pedido" items="${listaPedido}">
							<tr>

								<form action="ServletPedido" method="post">
									<td><c:out value="${pedido.cod_pedido}" /> 
										<input type="hidden" name="cod_pedido" value="${pedido.cod_pedido}" />
									</td>
									<td><c:out value="${pedido.nome_cliente}" /></td>
									<td><c:out value="${pedido.data_pedido}" /></td>
									<td><c:out value="${pedido.quantidade}" /></td>
									<td><c:out value="${pedido.descricao_frete}" /></td>
									<td><c:out value="${pedido.valor_frete}" /></td>
									<td><c:out value="${pedido.descricao_status_pedido}" /></td>
									<td><c:out value="${pedido.valor_total}" /></td>
									<td class="btnAcoes">
										<button class="btn btn-primary btnPage" type="submit" name="optionPedido" value="detalhePedido">Detalhes</button>
									</td>
								</form>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>