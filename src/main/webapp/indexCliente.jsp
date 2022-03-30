<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                    <a href="home.jsp
                    " >
                        <img src="imgs/home.png" class="icon"><span class="icon "> Home </span></a>
                </li>
                

                <li>
                    <a href="ServletPimpolhos
                    " class="active" >
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
                 Painel de  Controle

            </h2>


            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                <a class="logout" href="deslogar.jsp">Sair</a>
                </div>
            </div>
        </div>



	


	<div class="tabela" >
		<div class="col-md-12 col-lg-9 conteudo ">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="word-wrap: break-word; min-width: 50px; max-width: 160px;">Id</th>
							<th style="word-wrap: break-word; min-width: 130px; max-width: 160px;">Nome</th>
							<th style="word-wrap: break-word; min-width: 176px; max-width: 160px;">CPF</th>
							<th style="word-wrap: break-word; min-width: 211px; max-width: 160px;">Data de Nascimento</th>
							<th style="word-wrap: break-word; min-width: 130px; max-width: 160px;">Email</th>
							<th style="word-wrap: break-word; min-width: 135px; max-width: 180px;">Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="usuario" items="${listUser}">
							<tr>

								<form action="ServletPimpolhos" method="post">
									<td><c:out value="${usuario.cod_cliente}" /> <input
										type="hidden" name="cod_cliente"
										value="${usuario.cod_cliente}" /></td>
									<td><c:out value="${usuario.nome}" /></td>
									<td><span class="cpf"><c:out value="${usuario.cpf}" /></span></td>
									<td><span class="data"><c:out value="${usuario.nascimento}" /></td>
									<td><c:out value="${usuario.email}" /></td>
									
									<td class="tdLast">
										<button class="btn btn-primary btnPageReload" type="submit" name="option" value="cartaoSelecionado">Detalhes</button>
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