<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Editar Conta</title>

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="static/js/ie-emulation-modes-warning.js"></script>
</head>
<body>

	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="com.br.dao.AvaliadorDao" />
	
	<c:forEach var="avaliador" items="${dao.lista}">
		<c:if test="${sessionScope.idAvaliadorAutenticado==avaliador.id}">
		<div class="container">

		<form action="EditaAvaliadorServlet" class="form-signin">
			<h2 class="form-signin-heading">Editar Conta</h2>
				
			<input type="hidden" id="id" name="id" class="form-control"
				value="${avaliador.id}">
			
			<label>nome:</label>
			<input type="text" id="nome" name="nome" class="form-control"
				placeholder="nome:" value="${avaliador.nome}"> 
			<br>
			
			<label >email:</label>
			<input type="email" id="email" name="email" class="form-control"
				placeholder="email:" value="${avaliador.email}"> 
			<br>
			
			<label>loguin:</label>
			<input type="text" id="login" name="login" class="form-control"
				placeholder="loguin:" required autofocus value="${avaliador.login}"> 
			<br>		
			
			<label>senha:</label> 
			<input type="password" id="senha" name="senha" class="form-control"
				placeholder="senha:" required value="${avaliador.senha}">
			<br>
			
			<label> confirmar senha:</label> 
			<input type="password" id="senha2" name="senha2" class="form-control"
				placeholder="confirmar senha:" required value="${avaliador.senha2}">
			<br>
			
			<center>
				<a class="btn btn-lg btn-success" href="menuPrincipal.jsp" role="button">voltar</a>
				<input type="submit" class="btn btn-lg btn-success" value="Salvar" >
			</center>
		</form>
			
		</c:if>
	</c:forEach>

	

	</div>
	<!-- /container -->

</body>
</html>