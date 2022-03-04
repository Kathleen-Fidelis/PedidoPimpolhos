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
	                    <h5>Painel administrativos</h5>
	                </div>
	                <div class="bloco2 col-6">
	                   <h2> <img src="imgs/userLogin.png" style="margin-right: 15px;"> Login</h2><br>
	                    <p style="color: rgba(0, 0, 0, 0.63);">Insira seu login e senha:</p>
	                    <form class="form-sign">
	                       
	                        <div class="form-group">
	                            <label>Usu�rio:</label>
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
                                        	
                                            response.sendRedirect("ServletQuantidade");
                                        }
                                    }
                                }else {
                                    out.println("N�o � possivel logar");
                                }
                           %>
	
	                        <button type="submit" name="btnLog" value="Entrar" id="btnLog" class="btn btn-primary btn-block">Entrar</button>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		
    </body>
    
</html>