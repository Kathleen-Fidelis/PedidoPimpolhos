<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
=======
<title>Pimpolhos ADM</title>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
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
                            <a class="nav-link clientes " aria-current="page" href="ServletPimpolhos">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link categorias" href="ServletCategoria">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link produtos" href="ServletProduto">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fornecedores" href="ServletFornecedor">Fornecedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pedidos" href="ServletPedido">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link marcas" href="ServletMarca">Marcas</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
	
	<form action="ServletProduto" method="post">
		<button class="btn btn-secondary col-2" style=" margin:0px 0px 35px 18px; font-weight: bold; background-color: #9ACCFF; border: none;" type="submit"  name="optionProduto" value="insertFormProduto"> Adicionar Produto</button>

	</form>


    <div class="row bodyRow" style="justify-content:space-around;">
        <div class="col-xl-2 navLateral">
            <ul class="navbar-nav menuLateralTab">
              <li class="nav-item"><a class="nav-link" aria-current="page" href="#">Meu perfil</a>
            	<hr>
                <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="ServletPimpolhos">
                            	<div class="row">
                            		<img  class= "col-3" alt="" src="imgs/user (1).png" width="13%">
                      				<span class="col-6"> Cliente</span>
                     			</div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ServletCategoria">
                            	<div class="row">
                            		<img  class= "col-3" alt="" src="imgs/categories.png" width="13%">
                      				<span class="col-6"> Categorias</span>
                     			</div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ServletProduto">
                            	<div class="row">
                            		<img  class= "col-3" alt="" src="imgs/produto.png" width="13%">
                      				<span class="col-6"> Produtos</span>
                     			</div>
                            </a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link" href="ServletFornecedor">
                            	<div class="row" >
                            		<img  class= "col-3" alt="" src="imgs/fornecedor.png" width="13%">
                      				<span class="col-6"> Fornecedores</span>
                     			</div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ServletPedido">
                            	<div class="row">
                            		<img  class= "col-3" alt="" src="imgs/pedido.png" width="13%">
                      				<span class="col-6"> Pedido</span>
                     			</div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ServletMarca">
                            	<div class="row">
                            		<img  class= "col-3" alt="" src="imgs/etiqueta.png" width="13%">
                      				<span class="col-6"> Marca</span>
                     			</div>
                            </a>
=======
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
                    " class="active">
                        <img src="imgs/produto.png" class="icon"><span class="icon "> Produtos </span></a>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
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

    
    
    
    
    
    <div class="tabela">
    <form action="ServletProduto" method="post">
		<button class="btn btn-secondary col-3 btnPage" style=" font-weight: bold; background-color: #9ACCFF; border: none;" type="submit"  name="optionProduto" value="insertFormProduto"> Adicionar Produto</button>
	</form>
        <div class="col-md-12 col-lg-9 conteudo">
          <div class = "table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
                    
                        <th>Cod_Produto</th>
                        <th >Nome</th>
=======
                        <th>Cod. Produto</th>
                        <th>Nome</th>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
                        <th>Preço</th>
                        <th>Sexo</th>
                        <th>Dimensao</th>
                        <th>Material</th> 
                        <th>Peso</th>
                        <th>Conteudo Produto</th>
                        <th>Fornecedor</th>
                        <th>Categoria</th>
                        <th>Imagem</th>
                        <th>Marca</th>
                        <th>Ações</th>        
                      
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="produto" items="${listProduto}">
                        <tr>
                            
                            <form action="ServletProduto" method="post">
                                <td>
                                    <c:out value="${produto.cod_produto}"/>
                                    <input type="hidden" name="cod_produto" value="${produto.cod_produto}"/>
                                </td>
                                <td><c:out value="${produto.nome}"/></td>  
                                <td><span class="preco2" ><c:out value="${produto.preco}"/></span></td>
                                <td><c:out value="${produto.sexo}"/></td>
                                <td><span class="dimensao" ><c:out value="${produto.dimensao}"/></span></td>
                                <td><c:out value="${produto.material}"/></td>
<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
                                <td><span class="peso2" ><c:out value="${produto.peso}"/></span></td>
                                <td><c:out value="${produto.conteudo_produto}"/></td>    
                                <td><c:out value="${produto.cod_fornecedor}"/></td>
                                <td><c:out value="${produto.cod_categoria}"/></td>  
=======
                                <td><span class="peso"><c:out value="${produto.peso}"/></td>


                                <td style="word-wrap: break-word;min-width: 440px;max-width: 160px;"><c:out value="${produto.conteudo_produto}"/></td>    
                                <td><c:out value="${produto.nome_fornecedor}"/></td>
                                <td><c:out value="${produto.nome_categoria}"/></td>  
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
                                <td><c:out value="${produto.img_produto}"/></td>    
                                <td><c:out value="${produto.cod_marca}"/></td>                       
                               
                               
<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
                               <td class="btnAcoes" >
                               	<!-- Button trigger modal -->
									<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${produto.cod_produto}">Deletar</button>
									
=======
                               <td  >
                               			<!-- Button trigger modal -->
									<button type="button" class="btn btn-primary btnPage" data-bs-toggle="modal" data-bs-target="#exampleModal-${produto.cod_produto}">Deletar</button>

>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
									<!-- Modal -->
									<div  class="modal fade" id="exampleModal-${produto.cod_produto}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" >Deseja realmente deletar? </h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
									        <button type="submit" name="optionProduto" value="deleteProduto">Deletar</button>
									      </div>
									    </div>
									  </div>
									</div>
<<<<<<< HEAD:Modal e mask/src/main/webapp/indexProduto.jsp
                               
								<button type="submit" name="optionProduto" value="updateFormProduto">Atualizar</button>
=======
                               		
                               		
                               		
									<button type="submit" class="btn btn-primary btnPage" name="optionProduto" value="updateFormProduto">Atualizar</button>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/indexProduto.jsp
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
    </div>
    
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js"></script>
</body>
</html>