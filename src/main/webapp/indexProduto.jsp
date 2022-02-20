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
                    <a href="index.jsp" >
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

    <form action="ServletProduto" method="post">
		<button class="btn btn-secondary col-3 button" style=" font-weight: bold; background-color: #9ACCFF; border: none;" type="submit"  name="optionProduto" value="insertFormProduto"> Adicionar Produto</button>

	</form>
    
    <div class="tabela" style=" margin-top: 3%;margin-left: 20%">
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
                              
                                <td ><c:out value="${produto.nome}"/></td>
                                <td><c:out value="${produto.preco}"/></td>
                                <td><c:out value="${produto.sexo}"/></td>
                                <td><c:out value="${produto.dimensao}"/></td>
                                <td><c:out value="${produto.material}"/></td>
                                <td><span class="peso"><c:out value="${produto.peso}"/></td>


                                <td style="word-wrap: break-word;min-width: 440px;max-width: 160px;"><c:out value="${produto.conteudo_produto}"/></td>    
                                <td><c:out value="${produto.nome_fornecedor}"/></td>
                                <td><c:out value="${produto.nome_categoria}"/></td>  
                                <td><c:out value="${produto.img_produto}"/></td>    
                                <td><c:out value="${produto.nome_marca}"/></td>                       
                               </div>
                               
                               <td class="btnAcoes" >
                               		<button type="submit" class="btn btn-primary" name="optionProduto" value="deleteProduto">Deletar</button>
									<button type="submit" class="btn btn-primary" name="optionProduto" value="updateFormProduto">Atualizar</button>
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