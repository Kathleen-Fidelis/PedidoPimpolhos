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
                    " class="active">
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


            <div class="user-wrapper">
                <img src="imgs/carrinho.png" width="40px" height="40px" alt="">
                <div>
                    <h4>Pimpolhos</h4>
                 <a class="logout" href="deslogar.jsp" name="sair">Sair</a>
                </div>
            </div>
        </div>
        
        
<!-- ACCORDION -->
<div class="accordion" id="accordionExample" style="margin-top:17%">
	<c:forEach var="pedido" items="${listaItemDetalhePedido}">  
		 <form action="ServletPedido" method="post">
	  			<div class="accordion-item">
				    <h2 class="accordion-header" id="heading-${pedido.cod_produto}">
				      <button class="accordion-button custom-accordion" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-${pedido.cod_produto}" aria-expanded="true" aria-controls="collapse-${pedido.cod_produto}">
				       	 Item pedido
				      </button>
				    </h2>
	                    
			<input type="hidden" name="cod_pedido" value="${pedido.cod_produto}"/>
	                                                  
		    <div id="collapse-${pedido.cod_produto}" class="accordion-collapse collapse show" aria-labelledby="heading-${pedido.cod_produto}" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		      	<div style="display:flex;justify-content: space-between;">
		      		<div>
				        <p style="text-transform: uppercase"><strong>Informações do pedido</strong></p>
				        <p><strong>Código pedido:</strong> <c:out value="${pedido.cod_pedido}"/></p>
				        <p><strong>Data pedido:</strong> <c:out  value="${pedido.data_pedido}"/></p>
				        <p><strong>Nome cliente:</strong> <c:out value="${pedido.nome_cliente}"/></p>
				        <p><strong>Status pedido:</strong> <c:out value="${pedido.descricao_status_pedido}"/></p>
				        <p><strong>Forma pagamento:</strong> <c:out value="${pedido.descricao_forma_pagamento}"/></p>
				        <p><strong>Produto:</strong> <c:out value="${pedido.nome}"/></p>
				        <p><strong>Preço:</strong> <span class="preco4"><c:out value="${pedido.preco}"/></p>
				        <p><strong>Marca:</strong> <c:out value="${pedido.nome_marca}"/></p>
				        <p><strong>Quantidade:</strong> <c:out value="${pedido.quantidade}"/></p>
				        <p><strong>Valor total:</strong> <span class="preco"><c:out value="${pedido.valor_total}"/></p>
			        </div>
			        <div>
			        	<p style="text-transform: uppercase"><strong>Informações da entrega</strong></p>
				        <p><strong>Nome cidade:</strong> <c:out value="${pedido.nome_cidade}"/></p>
				        <p><strong>CEP:</strong> <c:out value="${pedido.cep}"/></p>
				        <p><strong>Nome rua:</strong> <c:out value="${pedido.nome_rua}"/></p>
				        <p><strong>N° casa:</strong> <c:out value="${pedido.numero_casa}"/></p>
				        <p><strong>Complemento:</strong> <c:out value="${pedido.complemento}"/></p>
				        <p><strong>Bairro:</strong> <c:out value="${pedido.bairro}"/></p>
				        <p><strong>Ponto referência:</strong> <c:out value="${pedido.ponto_referencia}"/></p>
				        <p><strong>Estado:</strong> <c:out value="${pedido.descricao_estado}"/></p>
				        <p><strong>Descrição frete:</strong> <c:out value="${pedido.descricao_frete}"/></p>
				        <p><strong>Valor frete:</strong> <span class="preco3"><c:out value="${pedido.valor_frete}"/></p>
			        </div>
		        </div>
		      </div>
		    </div>
	  	</div>
  	</form>
  </c:forEach>
</div>

  
    


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js" ></script> 
</body>
</html>