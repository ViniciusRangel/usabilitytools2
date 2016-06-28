<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<title>Cadastro Grupo</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
	
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="com.br.dao.SoftwareDao" />

	<div class="container">
	 
	 <div class="jumbotron">

		<form action="AdicionaGrupoServlet" class="form-signin" method="get">
			<h2 class="form-signin-heading">Cadastro do Grupo</h2>
			
			<label >Escolha o Software</label>
			<select name="software" id="software" class="form-signin form-control">
				<c:forEach var="soft" items="${dao.lista}">
					<c:if test="${sessionScope.idAvaliadorAutenticado==soft.idAvaliador}">
						<option value="${soft.nome}">${soft.nome}</option>
						<c:set var="idSoftware" value="${soft.id}"></c:set>
					</c:if>
					
				</c:forEach>
			</select>
			<input type="hidden" name="idsoftware" value="${idSoftware}">
			<br>
			
			<label >Nome</label>
			<input type="text"  class="form-control" name="nome" 
				placeholder="Nome do Grupo" required autofocus> 
			<br>
			<label >Quantidade de participantes</label>
			<input type="text"  class="form-control" name="participantes" 
				placeholder="Quantidade de participantes" required autofocus> 
			<br>
			
			<label >Breve descrição do Grupo</label>
			<textarea name="descricao"   rows="6" cols="35" 
			placeholder="Descrição"></textarea>
			
			<br><br>
			<center>
				<a class="btn btn-lg btn-success" href="menuPrincipal.jsp" role="button">voltar</a>
				<input class="btn btn-lg btn-success" type="submit" value="Cadastrar"/>
			</center>
		</form>

	 </div>
	</div>
	<!-- /container -->

</body>
</html>