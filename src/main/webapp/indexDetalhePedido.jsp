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
                    <a href="index.jsp" class="active">
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
                    <small>Bebês Reborn</small>
                </div>
            </div>
        </div>
        
        
        
   <div class="tabela" style=" margin-top: 16%;margin-left: 20%">     
      <div class="col-md-12 col-lg-9 conteudo">
          <div class = "table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cod. Pedido</th>    
                        <th>Data pedido</th> 
                        <th>Nome cliente</th> 
                        <th>Cidade</th> 
                        <th>CEP</th> 
                        <th>Rua</th> 
                        <th>Número</th> 
                        <th>Complemento</th> 
                        <th>Bairro</th> 
                        <th>Ponto Referência</th> 
                        <th>Estado</th> 
                        <th style="word-wrap: break-word;min-width: 122px;max-width: 160px;">Tipo de envio</th>
                        <th style="word-wrap: break-word;min-width: 122px;max-width: 160px;">Valor do frete</th>
                        <th>Status pedido</th> 
                        <th>Forma Pagamento</th> 
                        <th>Nome Produto</th> 
                        <th>Preço</th>
                        <th>Marca</th>  
                        <th>Quantidade</th> 
                        <th>Valor total</th> 
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pedido" items="${listaItemDetalhePedido}">
                        <tr>
                            
                            <form action="ServletPedido" method="post">
                                <td>
                                    <c:out value="${pedido.cod_pedido}"/>
                                    <input type="hidden" name="cod_pedido" value="${pedido.cod_pedido}"/>
                                </td>
                                <td> <c:out value="${pedido.data_pedido}"/></td>
                                <td ><c:out value="${pedido.nome_cliente}"/></td>
                                <td ><c:out value="${pedido.nome_cidade}"/></td>
                                <td ><c:out value="${pedido.cep}"/></td>
                                <td ><c:out value="${pedido.nome_rua}"/></td>
                                <td ><c:out value="${pedido.numero_casa}"/></td>
                                <td ><c:out value="${pedido.complemento}"/></td>
                                <td ><c:out value="${pedido.bairro}"/></td>
                                <td ><c:out value="${pedido.ponto_referencia}"/></td>
                                <td ><c:out value="${pedido.descricao_estado}"/></td>
                                <td> <c:out value="${pedido.descricao_frete}"/></td>
                                <td> <c:out value="${pedido.valor_frete}"/></td>
                                <td> <c:out value="${pedido.descricao_status_pedido}"/></td>
                                <td> <c:out value="${pedido.descricao_forma_pagamento}"/></td>
                                <td> <c:out value="${pedido.nome}"/></td>
                                <td> <span class="preco"><c:out value="${pedido.preco}"/></td>
                                <td> <c:out value="${pedido.nome_marca}"/></td>
                                <td> <c:out value="${pedido.quantidade}"/></td>
                                <td> <span class="preco"><c:out value="${pedido.valor_total}"/></td>
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