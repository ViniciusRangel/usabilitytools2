<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
	
<!DOCTYPE HTML>
<html lang="pt-br" >
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta Http-Equiv="Cache-Control" Content="no-cache">  
<meta Http-Equiv="Pragma" Content="no-cache">  
<meta Http-Equiv="Expires" Content="0"> 

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>



<div class="container">
	<div class="jumbotron"  >

		<form action="j_security_check" class="form-signin" method="post">
			
			<h2 class="form-signin-heading">Login de Usuário</h2>
			
			<input type="text" class="form-control" name="j_login" id="j_login"
				 placeholder="login:" required pattern=".{8,}"  autofocus 
				 oninvalid="setCustomValidity('ERR0: login')" 
				 onchange="try{setCustomValidity('')}catch(e){}" > 	
			<br> 
			<input type="password" class="form-control" name="j_password" 
				placeholder="senha:"  autofocus required
				oninvalid="setCustomValidity('ERR0: Senha')" 
				onchange="try{setCustomValidity('')}catch(e){}" >
			<br>
			
			<center>
				<a class="btn btn-lg btn-success" href="home.jsp" role="button">voltar</a>
				<input type="submit" value="Entrar" class="btn btn-lg btn-success" />
			</center>
			<br>
			<c:if test="${sessionScope.menssagem=='Erro: Login ou Senha'}">
				<div class="alert alert-danger">
					<strong>ERRO!</strong> Login ou senha
				</div>
			</c:if>
			
		</form>
		
		<center>
			<a href="#">Esqueci minha Senha</a> <br> 
			<a href="cadastroAvaliador.jsp">Cadastre-se</a>
		</center>


	</div >
	</div>
	<!-- /container -->

	

</body>
</html>