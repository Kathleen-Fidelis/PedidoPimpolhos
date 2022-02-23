<%@page import="connection.ConexaoLogin"%>
<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1" import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <link rel="stylesheet" href="css/styleLogin.css">
        <title>Login</title>
    </head>
    <body>
        <%
        ConexaoLogin conn = new ConexaoLogin();
                    Connection conexao = conn.ConectaMySql("login");
        %>
	       <div class="container-fluid">
	        <div class="col-12 display">
	            <div class=" row col-10">
	                <div class="bloco1 col-4">
	                    <img src="imgs/Logo.png" alt="">
	                    <h5>Painel administrativo</h5>
	                </div>
	                <div class="bloco2 col-6">
	                   <h2> <img src="imgs/userLogin.png" style="margin-right: 15px;"> Login</h2><br>
	                    <p style="color: rgba(0, 0, 0, 0.63);">Insira seu login e senha:</p>
	                    <form class="form-sign">
	                       
	                        <div class="form-group">
	                            <label>Usuário:</label>
	                            <input type="text" name="usuario" id="txtuser" value="" class="form-control">                              
	                        </div><br>
	                        <div class="form-group">
	                            <label>Senha:</label>
	                            <input type="password" name="senha" id="txtpass" value="" class="form-control">
	                        </div><br>
	                        <%
                               if (conexao != null) {
                                    if ((request.getParameter("usuario") !=null) && (request.getParameter("senha") !=null)) {
                                        String login, senha;
                                        login = request.getParameter("usuario");
                                        senha = request.getParameter("senha");
                                        Statement st;
                                        ResultSet rs;
                                        st = conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                                        rs = st.executeQuery("select * from login where usuario ='"+login+"' and senha='"+senha+"'");
                                        if(rs.next()){
                                            response.sendRedirect("home.jsp");
                                        }
                                    }
                                }else {
                                    out.println("Não é  possivel logar");
                                }
                           %>
	
	                        <button type="submit" name="btnLog" value="Entrar" id="btnLog" class="btn btn-primary btn-block">Entrar</button>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
        
<<<<<<< HEAD:Modal e mask/src/main/webapp/index.jsp
        <div class="col-md-12 col-lg-9 conteudo">
          <div class = "table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cod_Cliente</th>
                        <th style="word-wrap: break-word;min-width: 440px;max-width: 160px;">Nome</th>
                        <th style="word-wrap: break-word;min-width: 440px;max-width: 160px;">CPF</th>
                        <th>Data de Nascimento</th>
                        <th>Email</th>    
                         <th style="word-wrap: break-word;min-width: 440px;max-width: 160px;">Rua</th> 
                           <th>Nº</th> 
                           <th style="word-wrap: break-word;min-width: 440px;max-width: 160px;">CEP</th> 
                           <th>Complemento</th> 
                           <th>Ponto de Referencia</th> 
                           <th>Bairro</th> 
                          <th style="word-wrap: break-word;min-width: 440px;max-width: 160px;">Cidade</th> 
                           <th>Estado</th> 
                          
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="usuario" items="${listUser}">
                        <tr>
                            
                            <form action="ServletPimpolhos" method="post">
                                <td>
                                    <c:out value="${usuario.cod_cliente}"/>
                                    <input type="hidden" name="cod_cliente" value="${usuario.cod_cliente}"/>
                                </td>
                                <td><c:out value="${usuario.nome}"/></td>
                                <td><span class="cpf" ><c:out value="${usuario.cpf}"/></span></td>
                                <td><c:out value="${usuario.nascimento}"/></td>
                                <td><c:out value="${usuario.email}"/></td>
                                <td><c:out value="${usuario.rua}"/></td>
                                 <td><c:out value="${usuario.numeroCasa}"/></td>
                                 <td><span class="cep" ><c:out value="${usuario.cep}"/></span></td>
                                 <td><c:out value="${usuario.complemento}"/></td>
                                 <td><c:out value="${usuario.pontoReferencia}"/></td>
                                 <td><c:out value="${usuario.bairro}"/></td>
                                 <td><c:out value="${usuario.cidade}"/></td>
                                 <td><c:out value="${usuario.estado}"/></td>
                            </form>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>
        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script src="app.js"></script>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
=======
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		
    </body>
    
>>>>>>> 8813d85e5b0681e08dd75f4965d096e84602e8c4:src/main/webapp/index.jsp
</html>