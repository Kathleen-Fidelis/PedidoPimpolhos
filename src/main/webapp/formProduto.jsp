<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
                    <a href="home.jsp" class="active">
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
                 Painel de  Controle

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
        <div class="col-md 12 col-lg-9 conteudo">
            <form action="ServletProduto" method="post">



		         <c:choose>
					<c:when test="${ produto == null }">
						<div class="container col-10 input-marca" >
								<h2 style="margin: 30px 0px 50px 0px">Cadastrar Produto</h2>
								
								<label class="form-label" style="margin-right: 17px;">Nome:</label><input class="form-control" type="text" name="nome" required/><br>
								  
								  <div class="input-group mb-3">
						    <label class="form-label col-12" style="margin-right: 23px;">Preço:</label>
						     <span class="input-group-text col-1">R$</span>
						    <input class="form-control preco2" type="text" name="preco" value="${produto.preco}" required/><br>
								</div>
								
								<label class="form-label" style="margin-right: 32px;">Tipo de produto:</label>
								<select class="form-select input-select" name="sexo">
                                <option value="Menino">Bebe Reborn Menino</option>
                                <option value="Menina">Bebe Reborn Menina</option>
                                <option value="Acessório">Acessório</option>
                                </select>
								
								
								<label class="form-label" style="margin-right: 32px;">Dimensão:</label><input class="form-control dimensao" type="text" name="dimensao"required/><br>
							    <label class="form-label" style="margin-right: 32px;">Material:</label><input class="form-control" type="text" name="material" required/><br>
							    
								<div class="input-group mb-3">
								<label class="form-label col-12" style="margin-right: 23px;">Peso:</label>
								<span class="input-group-text col-1">Kg</span>
								<input class="form-control peso2" type="text" name="peso" value="${produto.peso}"required/>
								</div>
								
								<label class="form-label" style="margin-right: 32px;">Conteudo Produto:</label><input class="form-control" type="text" name="conteudo" required/><br>

								
	                        <!-- Fornecedor v -->
							
							<label class="form-label" style="margin-right: 32px;">Fornecedor:</label>
							<select name="cod_fornecedor" class="form-select form-select-md input-select">
                                 <c:forEach var="fornecedor" items="${listFornecedor}">  
                                 <option value ="${fornecedor.cod_fornecedor}"> ${fornecedor.nome_fornecedor}</option>										
                                  </c:forEach>							
                                 </select>
                                 
							<!-- Fornecedor ^ -->
							
							<!-- Categoria v -->
							<label class="form-label" style="margin-right: 32px;">Categoria:</label>
							<select name="cod_categoria" class="form-select form-select-md input-select">
                                 <c:forEach var="categoria" items="${listCategoria}">  
                                 <option value ="${categoria.cod_categoria}"> ${categoria.nome_categoria}</option>										
                                  </c:forEach>							
                                 </select>
                            <!-- Fornecedor  ^ -->

							<label class="form-label" style="margin-right: 32px;">Imagem:</label>
							<input class="form-control input-select" type="text" name="img_produto" value="${produto.img_produto}"required/>
							
							<!-- Marca  v -->
							<label class="form-label" style="margin-right: 32px;">Marca:</label>	
							<select name="cod_marca" class="form-select form-select-md input-select">
                                 <c:forEach var="marca" items="${listMarca}">  
                                 <option value ="${marca.cod_marca}"> ${marca.nome_marca}</option>										
                                  </c:forEach>							
                                 </select>
							<!-- Marca ^ -->
							
							
							    
								<button class="btn btn-primary btnPage" type="submit" name="optionProduto" value="insertProduto">Salvar</button>
<<<<<<< HEAD
=======
=======
								<button  class="btn btn-primary btnPage" type="submit" name="optionProduto" value="insertProduto">Salvar</button>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
						</div>
					</c:when>
					<c:otherwise>
						<div class="container col-10 input-marca">
							<h2 style="margin: 30px 0px 50px 0px">Atualizar Produto</h2>
						
							<input class="form-control" type="hidden" name="cod_produto" value="${produto.cod_produto}"required/><br>
							<label class="form-label" style="margin-right: 17px;">Nome:</label><input class="form-control" type="text" name="nome" value="${produto.nome}" required /><br>
<<<<<<< HEAD
						    
						    
                        <div class="input-group mb-3">
						    <label class="form-label col-12" style="margin-right: 23px;">Preço:</label>
						     <span class="input-group-text col-1">R$</span>
						    <input class="form-control" type="text" name="preco" value="${produto.preco}"/><br>
								</div>
=======
<<<<<<< HEAD
								<label class="form-label" style="margin-right: 23px;">Preço:</label><input class="form-control" type="text" name="preco" value="${produto.peso}"/><br>
=======
							<label class="form-label" style="margin-right: 23px;">Preço:</label><input class="form-control" type="text" name="preco" value="${produto.peso}"/><br>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
								
								<label class="form-label" style="margin-right: 32px;">Tipo de produto:</label>
								<select class="form-select input-select" name="sexo">
                                <option value="Menino">Bebe Reborn Menino</option>
                                <option value="Menina">Bebe Reborn Menina</option>
                                <option value="Acessório">Acessório</option>
                                </select>
								
								
								<label class="form-label" style="margin-right: 32px;">Dimensão:</label><input class="form-control" type="text" name="dimensao" value="${produto.dimensao}"/>
							    <label class="form-label" style="margin-right: 32px;">Material:</label><input class="form-control" type="text" name="material" value="${produto.material}" required/>
								
								<div class="input-group mb-3">
								<label class="form-label col-12" style="margin-right: 23px;">Peso:</label>
								<span class="input-group-text col-1">Kg</span>
								<input class="form-control peso2" type="text" name="peso" value="${produto.peso}"/>
								</div>
								
								<label class="form-label" style="margin-right: 32px;">Conteudo Produto:</label><input class="form-control" type="text" name="conteudo" value="${produto.conteudo_produto}"/>

								
	                        <!-- Fornecedor v -->
							
							<label class="form-label" style="margin-right: 32px;">Fornecedor:</label>
							<select name="cod_fornecedor" class="form-select form-select-md input-select">
                                 <c:forEach var="fornecedor" items="${listFornecedor}">  
                                 <option value ="${fornecedor.cod_fornecedor}"> ${fornecedor.nome_fornecedor}</option>										
                                  </c:forEach>							
                                 </select>
                                 
							<!-- Fornecedor ^ -->
							
							<!-- Categoria v -->
							<label class="form-label" style="margin-right: 32px;">Categoria:</label>
							<select name="cod_categoria" class="form-select form-select-md input-select">
                                 <c:forEach var="categoria" items="${listCategoria}">  
                                 <option value ="${categoria.cod_categoria}"> ${categoria.nome_categoria}</option>										
                                  </c:forEach>							
                                 </select>
                            <!-- Categoria  ^ -->

							<label class="form-label" style="margin-right: 32px;">Imagem:</label>
							<input class="form-control input-select" type="text" name="img_produto" value="${produto.img_produto}"/>
							
							<!-- Marca  v -->
							<label class="form-label" style="margin-right: 32px;">Marca:</label>	
							<select name="cod_marca" class="form-select form-select-md input-select">
                                 <c:forEach var="marca" items="${listMarca}">  
                                 <option value ="${marca.cod_marca}"> ${marca.nome_marca}</option>										
                                  </c:forEach>							
                                 </select>
							<!-- Marca ^ -->
						
							<button class="btn btn-primary btnPage" type="submit" name="optionProduto" value="updateProduto">Atualizar</button>
						</div>
					</c:otherwise>
				</c:choose>
            </form>
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