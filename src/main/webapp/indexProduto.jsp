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
                            <a class="nav-link clientes " aria-current="page" href="#">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link categorias" href="#">Categorias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link produtos" href="#">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fornecedores" href="#">Fornecedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pedidos" href="#">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link marcas" href="#">Marcas</a>
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
        <div class="col-2 navLateral">
            <ul class="navbar-nav menuLateralTab">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Meu perfil</a>
                </li>
                <hr>
                <li class="nav-item">
                    <a class="nav-link clientes " aria-current="page" href="#">Clientes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link categorias" href="#">Categorias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link produtos" href="#">Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fornecedores" href="#">Fornecedores</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link pedidos" href="#">Pedidos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link marcas" href="#">Marcas</a>
                </li>
            </ul>
        </div>
        
        
        
        
        <div class="col-md-12 col-lg-9 conteudo">
          <div class = "table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cod_Produto</th>
                        <th>Nome</th>
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
                                <td><c:out value="${produto.preco}"/></td>
                                <td><c:out value="${produto.sexo}"/></td>
                                <td><c:out value="${produto.dimensao}"/></td>
                                <td><c:out value="${produto.material}"/></td>
                                <td><c:out value="${produto.peso}"/></td>
                                <td><c:out value="${produto.conteudo_produto}"/></td>    
                                <td><c:out value="${produto.cod_fornecedor}"/></td>
                                <td><c:out value="${produto.cod_categoria}"/></td>  
                                <td><c:out value="${produto.img_produto}"/></td>    
                                <td><c:out value="${produto.cod_marca}"/></td>                       
                               
                               
                               <td class="btnAcoes" >
                               <button type="submit" name="optionProduto" value="deleteProduto">Deletar</button>
								<button type="submit" name="optionProduto" value="updateFormProduto">Atualizar</button>
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