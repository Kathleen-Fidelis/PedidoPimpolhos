<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light ">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Pimpolhos</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<div class="col-12 navHamb">
					<ul class="navbar-nav menuLateralTab">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#">Meu perfil</a></li>
						<hr>
						<li class="nav-item"><a class="nav-link clientes "
							aria-current="page" href="ServletPimpolhos">Clientes</a></li>
						<li class="nav-item"><a class="nav-link categorias"
							href="ServletCategoria">Categorias</a></li>
						<li class="nav-item"><a class="nav-link produtos"
							href="ServletProduto">Produtos</a></li>
						<li class="nav-item"><a class="nav-link fornecedores"
							href="ServletFornecedor">Fornecedores</a></li>
						<li class="nav-item"><a class="nav-link pedidos"
							href="ServletPedido">Pedidos</a></li>
						<li class="nav-item"><a class="nav-link marcas"
							href="ServletMarca">Marcas</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>



	<div class="row bodyRow" style="justify-content: space-around;">
		<div class="col-2 navLateral">
			<ul class="navbar-nav menuLateralTab">
				<li class="nav-item"><a class="nav-link" aria-current="page"
					href="#">Meu perfil</a>
					<hr>
				<li class="nav-item"><a class="nav-link" aria-current="page"
					href="ServletPimpolhos">
						<div class="row">
							<img class="col-3" alt="" src="imgs/user (1).png" width="13%">
							<span class="col-6"> Cliente</span>
						</div>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ServletCategoria">
						<div class="row">
							<img class="col-3" alt="" src="imgs/categories.png" width="13%">
							<span class="col-6"> Categorias</span>
						</div>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="ServletProduto">
						<div class="row">
							<img class="col-3" alt="" src="imgs/produto.png" width="13%">
							<span class="col-6"> Produtos</span>
						</div>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ServletFornecedor">
						<div class="row">
							<img class="col-3" alt="" src="imgs/fornecedor.png" width="13%">
							<span class="col-6"> Fornecedores</span>
						</div>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="ServletPedido">
						<div class="row">
							<img class="col-3" alt="" src="imgs/pedido.png" width="13%">
							<span class="col-6"> Pedido</span>
						</div>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="ServletMarca">
						<div class="row">
							<img class="col-3" alt="" src="imgs/etiqueta.png" width="13%">
							<span class="col-6"> Marca</span>
						</div>
				</a></li>
			</ul>
		</div>



		<div class="col-md-12 col-lg-9 conteudo">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
						    <th>#</th>
							<th>Nome</th>
							<th>CPF</th>
							<th>Data de Nascimento</th>
							<th>Email</th>
				            <th>Rua </th>
				            <th>N�</th>
							<th>CEP</th>
							<th>Complemento</th>
							<th>Ponto de referencia</th>
							<th>Bairro</th>
							<th>Cidade </th>
							<th>Estado</th>
						    <th>Bandeira</th>
						    <th>Titular do Cart�o</th>
						    <th>DDD</th>
						    <th>Telefone</th>
						    <th>Tipo do telefone</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="usuario" items="${listDetalhes}">
							<tr>
                     
                     
                     
								<form action="ServletPimpolhos" method="post">
								
									<td><c:out value="${usuario.cod_cliente}" /> 
									<input type="hidden" name="cod_cliente" value="${usuario.cod_cliente}" /></td>
									<td><c:out value="${usuario.nome}" /></td>
									<td><span class="cpf"><c:out value="${usuario.cpf}" /></span></td>
									<td><c:out value="${usuario.nascimento}" /></td>
									<td><c:out value="${usuario.email}" /></td>
									<td><c:out value="${usuario.rua}" /></td>
									<td><c:out value="${usuario.numeroCasa}" /></td>
									<td><c:out value="${usuario.cep}" /></td>
									<td><c:out value="${usuario.complemento}" /></td>
									<td><c:out value="${usuario.pontoReferencia}" /></td>
									<td><c:out value="${usuario.bairro}" /></td>
									<td><c:out value="${usuario.cidade}" /></td>
									<td><c:out value="${usuario.estado}" /></td>
									<td><c:out value="${usuario.bandeira}" /></td>
									<td><c:out value="${usuario.titularCartao}" /></td>
									<td><c:out value="${usuario.dddtelefone}" /></td>
									<td><c:out value="${usuario.telefoneCliente}" /></td>
							        <td><c:out value="${usuario.tipoTelefone}" /></td>
								</form>	
								
							</tr>
				</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>