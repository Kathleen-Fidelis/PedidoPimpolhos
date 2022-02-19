<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
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
            
            <div class="collapse navbar-collapse" id="navbarNav">

            </div>
        </div>
    </nav>
    <div class="row bodyRow" style="justify-content:space-around;">
        <div class="col-2 navLateral">
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
                </li>
            </ul>
        </div>

   
        
        
        
        <div class="col-md 12 col-lg-9 conteudo">
            <form action="ServletProduto" method="post">



		         <c:choose>
					<c:when test="${ produto == null }">
						<div class="container col-10 input-marca" >
								<h2 style="margin: 30px 0px 50px 0px">Cadastrar Produto</h2>
								
								<label style="margin-right: 17px;">Nome:</label><input type="text" name="nome" required/><br>
								<label style="margin-right: 23px;">Preço:</label><input type="text" name="preco"/><br>
								
								<label style="margin-right: 32px;">Tipo de produto:</label>
								<select class="form-select" name="sexo">
                                <option value="Menino">Bebe Reborn Menino</option>
                                <option value="Menina">Bebe Reborn Menina</option>
                                <option value="Acessório">Acessório</option>
                                </select>
								
								
								<label style="margin-right: 32px;">Dimensão:</label><input type="text" name="dimensao"/><br>
							    <label style="margin-right: 32px;">Material:</label><input type="text" name="material" required/><br>
								<label style="margin-right: 23px;">Peso:</label><input type="text" name="peso"/><br>
								<label style="margin-right: 32px;">Conteudo Produto:</label><input type="text" name="conteudo"/><br>

								
	                        <!-- Fornecedor v -->
							
							<label style="margin-right: 32px;">Fornecedor:</label>
							<select name="cod_fornecedor" class="form-select form-select-md">
                                 <c:forEach var="fornecedor" items="${listFornecedor}">  
                                 <option value ="${fornecedor.cod_fornecedor}"> ${fornecedor.nome_fornecedor}</option>										
                                  </c:forEach>							
                                 </select>
                                 
							<!-- Fornecedor ^ -->
							
							<!-- Categoria v -->
							<label style="margin-right: 32px;">Categoria:</label>
							<select name="cod_categoria" class="form-select form-select-md">
                                 <c:forEach var="categoria" items="${listCategoria}">  
                                 <option value ="${categoria.cod_categoria}"> ${categoria.nome_categoria}</option>										
                                  </c:forEach>							
                                 </select>
                            <!-- Fornecedor  ^ -->

							<label style="margin-right: 32px;">Imagem:</label>
							<input type="text" name="img_produto" value="${produto.img_produto}"/>
							
							<!-- Marca  v -->
							<label style="margin-right: 32px;">Marca:</label>	
							<select name="cod_marca" class="form-select form-select-md">
                                 <c:forEach var="marca" items="${listMarca}">  
                                 <option value ="${marca.cod_marca}"> ${marca.nome_marca}</option>										
                                  </c:forEach>							
                                 </select>
							<!-- Marca ^ -->
							
							
							    
								<button style="margin-top: 13px; width: 20%;" class="btn btn-secondary" type="submit" name="optionProduto" value="insertProduto">Salvar</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="container col-10 input-marca">
							<h2 style="margin: 30px 0px 50px 0px">Atualizar Produto</h2>
						
							<input type="hidden" name="cod_produto" value="${produto.cod_produto}"/><br>
							<label style="margin-right: 17px;">Nome:</label><input type="text" name="nome" required/><br>
								<label style="margin-right: 23px;">Preço:</label><input type="text" name="preco"/><br>
								
								<label style="margin-right: 32px;">Tipo de produto:</label>
								<select class="form-select" name="sexo">
                                <option value="Menino">Bebe Reborn Menino</option>
                                <option value="Menina">Bebe Reborn Menina</option>
                                <option value="Acessório">Acessório</option>
                                </select>
								
								
								<label style="margin-right: 32px;">Dimensão:</label><input type="text" name="dimensao"/><br>
							    <label style="margin-right: 32px;">Material:</label><input type="text" name="material" required/><br>
								<label style="margin-right: 23px;">Peso:</label><input type="text" name="peso"/><br>
								<label style="margin-right: 32px;">Conteudo Produto:</label><input type="text" name="conteudo"/><br>

								
	                        <!-- Fornecedor v -->
							
							<label style="margin-right: 32px;">Fornecedor:</label>
							<select name="cod_fornecedor" class="form-select form-select-md">
                                 <c:forEach var="fornecedor" items="${listFornecedor}">  
                                 <option value ="${fornecedor.cod_fornecedor}"> ${fornecedor.nome_fornecedor}</option>										
                                  </c:forEach>							
                                 </select>
                                 
							<!-- Fornecedor ^ -->
							
							<!-- Categoria v -->
							<label style="margin-right: 32px;">Categoria:</label>
							<select name="cod_categoria" class="form-select form-select-md">
                                 <c:forEach var="categoria" items="${listCategoria}">  
                                 <option value ="${categoria.cod_categoria}"> ${categoria.nome_categoria}</option>										
                                  </c:forEach>							
                                 </select>
                            <!-- Fornecedor  ^ -->

							<label style="margin-right: 32px;">Imagem:</label>
							<input type="text" name="img_produto" value="${produto.img_produto}"/>
							
							<!-- Marca  v -->
							<label style="margin-right: 32px;">Marca:</label>	
							<select name="cod_marca" class="form-select form-select-md">
                                 <c:forEach var="marca" items="${listMarca}">  
                                 <option value ="${marca.cod_marca}"> ${marca.nome_marca}</option>										
                                  </c:forEach>							
                                 </select>
							<!-- Marca ^ -->
						
							<button class="btn btn-secondary" type="submit" name="optionProduto" value="updateProduto">Atualizar</button>
						</div>
					</c:otherwise>
				</c:choose>
            </form>
        </div>
     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
</body>
</html>