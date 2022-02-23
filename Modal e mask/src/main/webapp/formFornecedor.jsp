<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pimpolhos ADM</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
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
        
   <div class="tabela">  

	<div class="col-md-12 col-lg-9 conteudo">
		  <form action="ServletFornecedor" method="post">
				<c:choose>
					<c:when test="${ fornecedor == null }">
						<div class="container col-10 input-marca">
							<h2 style="margin: 30px 0px 50px 0px;">Cadastrar Fornecedor</h2>
<<<<<<< HEAD:Modal e mask/src/main/webapp/formFornecedor.jsp
							<input style="border-radius: 5px; border: 1px solid gray; height: 30px; padding: 10px;" type="text" name="name" required/><br>
						
							<button style="margin-top: 13px; width: 20%; " class="btn btn-primary" type="submit" name="optionFornecedor" value="insertFornecedor">Salvar</button>
=======
							<!--  <input style="border-radius: 5px; border: 1px solid gray; height: 30px; padding: 10px;" type="text" name="name" required/><br>-->
							<label style="margin-right: 17px;">Nome do Fornecedor:<input id="mensagem" class="form-control input-select" type="text" name="name" required/><br>
							
							<button class="btn btn-primary btnPage" type="submit" name="optionFornecedor" value="insertFornecedor">Salvar</button>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/formFornecedor.jsp
						</div>
					</c:when>
					<c:otherwise>
						<div class="container col-10 input-marca">
							<input type="hidden" name="cod_fornecedor" value="${fornecedor.cod_fornecedor}"/><br>
							<h2 style="margin-bottom: 50px; ">Atualizar Fornecedor</h2>
							<input id="mensagem" class="form-control input-select" type="text" name="name" value="${fornecedor.nome_fornecedor}" required/><br>
							
						
<<<<<<< HEAD:Modal e mask/src/main/webapp/formFornecedor.jsp
							<button class="btn btn-primary" type="submit" name="optionFornecedor" value="updateFornecedor">Atualizar</button>
=======
							<button class="btn btn-primary btnPage" type="submit" name="optionFornecedor" value="updateFornecedor">Atualizar</button>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/formFornecedor.jsp
						</div>
					</c:otherwise>
				</c:choose>
		</form>
	</div>
	</div>
</div>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js" ></script>
	
	
</body>
</html>