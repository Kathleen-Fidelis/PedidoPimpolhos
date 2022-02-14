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
                            <a class="nav-link clientes " aria-current="page" href="index.jsp">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link categorias" href="indexCategoria.jsp">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link produtos" href="indexProduto.jsp">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fornecedores" href="indexFornecedor.jsp">Fornecedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pedidos" href="indexPedido.jsp">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link marcas" href="indexMarca.jsp">Marcas</a>
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
                <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#">Meu perfil</a>
                        </li>
                        <hr>
                        <li class="nav-item">
                            <a class="nav-link clientes " aria-current="page" href="index.jsp">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link categorias" href="indexCategoria.jsp">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link produtos" href="indexProduto.jsp">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fornecedores" href="indexFornecedor.jsp">Fornecedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pedidos" href="indexPedido.jsp">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link marcas" href="indexMarca.jsp">Marcas</a>
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
								<label style="margin-right: 32px;">Sexo:</label><input type="text" name="sexo"/><br>
								<label style="margin-right: 32px;">Dimensão:</label><input type="text" name="dimensao"/><br>
							    <label style="margin-right: 32px;">Material:</label><input type="text" name="material" required/><br>
								<label style="margin-right: 23px;">Peso:</label><input type="text" name="peso"/><br>
								<label style="margin-right: 32px;">Conteudo Produto:</label><input type="text" name="conteudo"/><br>
								<label style="margin-right: 32px;">Fornecedor:</label><select name="cod_fornecedor">  <option value="valor1">1</option></select>
								<label style="margin-right: 32px;">Categoria:</label><select name="cod_categoria">  <option value="valor1">1 <option value="valor2">2 <option value="valor3">3</option></select><br><br>
								<label style="margin-right: 32px;">Imagem:</label><input type="text" name="img_produto"/><br>
								<label style="margin-right: 32px;">Marca:</label><input type="text" name="cod_marca"/><br>
								
								
								
							   
							    
							    
							    
								<button style="margin-top: 13px; width: 20%;" class="btn btn-primary" type="submit" name="optionProduto" value="insertProduto">Salvar</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="container col-10 input-marca">
							<h2 style="margin: 30px 0px 50px 0px">Atualizar Produto</h2>
						
							<input type="hidden" name="cod_produto" value="${produto.cod_produto}"/><br>
							<label style="margin-right: 17px;">Nome:</label>
							<input type="text" name="name" value="${produto.nome}" required/><br>
							<label style="margin-right: 23px;">Preço:</label>
							<input type="text" name="preco" value="${produto.preco}" required/><br>
							<label style="margin-right: 23px;">Sexo:</label>
							<input type="text" name="sexo" value="${produto.sexo}"/><br>
							<label style="margin-right: 32px;">Dimensao:</label>
							<input type="text" name="dimensao" value="${produto.dimensao}"/><br>
							<label style="margin-right: 23px;">Material:</label>
							<input type="text" name="material" value="${produto.material}" required/><br>
							<label style="margin-right: 23px;">Peso:</label>
							<input type="text" name="peso" value="${produto.peso}"/><br>
							<label style="margin-right: 32px;">Conteudo produto:</label>
							<input type="text" name="conteudo_produto" value="${produto.conteudo_produto}"/><br>
							<label style="margin-right: 32px;">Fornecedor:</label>
							<input type="text" name="cod_fonecedor" value="${produto.cod_fornecedor}"/><br>
							<label style="margin-right: 32px;">Categoria:</label>
							<input type="text" name="cod_categoria" value="${produto.cod_categoria}"/><br>
							<label style="margin-right: 32px;">Imagem:</label>
							<input type="text" name="img_produto" value="${produto.img_produto}"/><br>
							<label style="margin-right: 32px;">Marca:</label>
							<input type="text" name="cod_marca" value="${produto.cod_marca}"/><br>
							
							
						
							<button class="btn btn-primary" type="submit" name="optionProduto" value="updateProduto">Atualizar</button>
						</div>
					</c:otherwise>
				</c:choose>
            </form>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
</body>
</html>