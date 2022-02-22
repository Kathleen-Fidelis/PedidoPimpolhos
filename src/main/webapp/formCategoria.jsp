<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cadastro Categoria</title>
	<link rel="stylesheet" href="css/style.css"type="text/css">
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
<<<<<<< HEAD
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
=======
<<<<<<< HEAD
                    <a href="index.jsp" >
=======
                    <a href="home.jsp" class="active">
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
                        <span class="icon"> Home </span></a>
                </li>
                

                <li>
                    <a href="ServletPimpolhos
                    " >
                        <img src="imgs/user (1).png" class="icon"><span class="icon "> Clientes</span></a>
                </li>

 				<li>
                    <a href="ServletCategoria
<<<<<<< HEAD
                    " class="active">
=======
                    ">
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
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
<<<<<<< HEAD

            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                    <a class="logout" href="deslogar.jsp">Sair</a>
                    
                </div>
            </div>
        </div>
        
     <div class="tabela"> 
<<<<<<< HEAD
=======
=======

            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                    <small>Beb�s Reborn</small>
                </div>
            </div>
        </div>

<div class="tabela">  
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
		<div class="col-md-12 col-lg-9 conteudo">
		  	<form action="ServletCategoria" method="post">
				<c:choose>
					<c:when test="${ categoria == null }">
						<div class="container col-10 input-marca">
							<h2 style="margin: 30px 0px 50px 0px;">Cadastrar Categoria</h2>
							<!--  <input style="border-radius: 5px; border: 1px solid gray; height: 30px; padding: 10px; type="text" name="name" required/><br>-->
							<label style="margin-right: 17px;">Nome da Categoria:
							<input class="form-control input-select" type="text" name="name" required/><br>
<<<<<<< HEAD
=======
=======
							<input class="form-control input-select" style="border-radius: 5px; border: 1px solid gray; height: 30px; padding: 10px; type="text" name="name" required/><br>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
							
							<button class="btn btn-primary btnPage" type="submit" name="optionCategoria" value="insertCategoria">Salvar</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class= "container col-10 input-marca">
							<input type="hidden" name="cod_categoria" value="${categoria.cod_categoria}"/><br>
							<h2 style="margin: 30px 0px 50px 0px;">Atualizar Categoria</h2>
							<input id="mensagem" class="form-control input-select" type="text" name="name" value="${categoria.nome_categoria}" required/><br>
							
						
							<button class="btn btn-primary btnPage" type="submit" name="optionCategoria" value="updateCategoria">Atualizar</button>
						</div>
					</c:otherwise>
				</c:choose>
			</form>
		</div>
		</div>
<<<<<<< HEAD
=======
=======
	</div>
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4
>>>>>>> branch 'kaique' of https://github.com/Kathleen-Fidelis/PedidoPimpolhos.git
		
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
<script src="app.js" ></script>
 
		
		
</body>
</html>