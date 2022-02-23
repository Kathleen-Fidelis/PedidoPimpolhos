<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    " class="active">
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
                Painel de Controle
            </h2>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="procure aqui" />
            </div>

            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                   <a class="logout" href="deslogar.jsp">Sair</a>
                </div>
            </div>
        </div>


	
	

	<div class="tabela">
	<form action="ServletCategoria" method="post">
		<button class="btn btn-primary col-3 btnPageReload" type="submit"  name="optionCategoria" value="insertFormCategoria"> Adicionar Categoria</button>
	</form>
        <div class="col-md-12 col-lg-9 conteudo">
			<div class = "table-responsive">
				<table class="table table-hover" >
					<thead>
						<tr>
							<th>Cod. Categoria</th>
							<th>Nome Categoria</th>
							<th style="text-align:center;">Ações</th> 
						</tr>
					</thead>
					<tbody>
						<c:forEach var="categoria" items="${listCategoria}">
							<tr>
								<form action="ServletCategoria" method="post">
									<td>
										<c:out value="${categoria.cod_categoria}"/>
										<input type="hidden" name="cod_categoria" value="${categoria.cod_categoria}"/>
									</td>
									<td><c:out value="${categoria.nome_categoria}"/></td>
									
									<td class="btnAcoes">
										<button type="button" class="btn btn-primary btnPage" data-bs-toggle="modal" data-bs-target="#exampleModal-${categoria.cod_categoria}">Deletar</button>

										
										<!-- Modal -->
									<div  class="modal fade" id="exampleModal-${categoria.cod_categoria}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" >Deseja realmente deletar? </h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
									        <button class="btn btn-primary btnPageReload" type="submit" name="optionCategoria" value="deleteCategoria">Deletar</button>
									      </div>
									    </div>
									  </div>
									</div>
										
										
										<button class="btn btn-primary btnPage"  type="submit" name="optionCategoria" value="updateFormCategoria">Atualizar</button>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>