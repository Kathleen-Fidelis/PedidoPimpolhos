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
                    <a href="home.jsp
                    " >
                        <img src="imgs/home.png" class="icon"><span class="icon "> Home </span></a>
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
                    " class="active">
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
        



	<div class="tabela">
	
    <form action="ServletFornecedor" method="post">
		<button class="btn btn-primary btnPageReload"  type="submit"  name="optionFornecedor" value="insertFormFornecedor"> Adicionar Fornecedor</button>
    </form>
        <div class="col-md-12 col-lg-9 conteudo">
          	<div class = "table-responsive">
	            <table class="table table-hover ">
					<thead>
						<tr>
							<th style="word-wrap: break-word; min-width: 50px; max-width: 160px;">Id</th>
							<th>Nome Fornecedor</th>
							<th >Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="fornecedor" items="${listFornecedor}">
							<tr>
								<form action="ServletFornecedor" method="post">
									<td>
										<c:out value="${fornecedor.cod_fornecedor}"/>
										<input type="hidden" name="cod_fornecedor" value="${fornecedor.cod_fornecedor}"/>
									</td>
									<td><c:out value="${fornecedor.nome_fornecedor}"/></td>
									
									<td class="btnAcoes">
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary btnPageReload" data-bs-toggle="modal" data-bs-target="#exampleModal-${fornecedor.cod_fornecedor}">Deletar</button>

									<!-- Modal -->
									<div  class="modal fade" id="exampleModal-${fornecedor.cod_fornecedor}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" >Deseja realmente deletar? </h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
											 <c:out value="${fornecedor.nome_fornecedor}"/>     
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
									        <button class="btn btn-primary btnPageReload" type="submit" name="optionFornecedor" value="deleteFornecedor">Deletar</button>
									      </div>
									    </div>
									  </div>
									</div>
										
										<button class="btn btn-primary btnPageReload" type="submit" name="optionFornecedor" value="updateFormFornecedor">Atualizar</button>
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

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>