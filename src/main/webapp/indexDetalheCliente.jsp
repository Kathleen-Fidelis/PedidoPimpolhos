<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
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
                    <a href="" class="active">
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
                    ">
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
                    <small>Bebês Reborn</small>
                </div>
            </div>
        </div>


<div class="tabela" style=" margin-top: 16%;margin-left: 20%">
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
				            <th>Nº</th>
							<th>CEP</th>
							<th>Complemento</th>
							<th>Ponto de referencia</th>
							<th>Bairro</th>
							<th>Cidade </th>
							<th>Estado</th>
						    <th>Bandeira</th>
						    <th>Titular do Cartão</th>
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
									<td><span class="cep"><c:out value="${usuario.cep}" /></td>
									<td><c:out value="${usuario.complemento}" /></td>
									<td><c:out value="${usuario.pontoReferencia}" /></td>
									<td><c:out value="${usuario.bairro}" /></td>
									<td><c:out value="${usuario.cidade}" /></td>
									<td><c:out value="${usuario.estado}" /></td>
									<td><c:out value="${usuario.bandeira}" /></td>
									<td><c:out value="${usuario.titularCartao}" /></td>
									<td><c:out value="${usuario.dddtelefone}" /></td>
									<td><span class="celular"><c:out value="${usuario.telefoneCliente}" /></td>
							        <td><c:out value="${usuario.tipoTelefone}" /></td>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js" ></script>
		
</body>
</html>