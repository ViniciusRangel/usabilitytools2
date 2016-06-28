<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<title>Cadastro Avaliação</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<script src="static/js/verifica.js"></script>

</head>

<body>
	
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="com.br.dao.SoftwareDao" />
	<jsp:useBean id="daoG" class="com.br.dao.GrupoDao" />

	<div class="container">
	 
	 <div class="jumbotron">
			<h2 class="form-signin-heading" align="center" >Cadastro da Avaliação</h2>
		<form action="AdicionaAvaliacaoServlet" class="form-signin" method="get">
			
			<label >Selecione o Software</label>
			<select name="software" id="software" class="form-signin form-control">
				<c:forEach var="soft" items="${dao.lista}">
					<c:if test="${sessionScope.idAvaliadorAutenticado==soft.idAvaliador}">
						<option value="${soft.nome}">${soft.nome}</option>
						<c:set var="idSoftware" value="${soft.id}" ></c:set>
					</c:if>
				</c:forEach>
			</select>
			<input type="hidden" name="idsoftware" value="${idSoftware}" >
			
			<br>
			<label >Selecione o Grupo</label>
			<select name="grupo" id="grupo" class="form-signin form-control">
				<c:forEach var="grupo" items="${daoG.lista}">
					<c:if test="${sessionScope.idAvaliadorAutenticado==grupo.idAvaliador2}">
						<option value="${grupo.nomeGrupo}">${grupo.nomeGrupo}</option>
						<c:set var="idGrupo" value="${grupo.id}" ></c:set>
					</c:if>
				</c:forEach>
			</select>
			
			<input type="hidden" name="idgrupo" value="${idGrupo}" >
			<br>
			<div align="center">
				<label >Selecione o tipo de Escala</label>
				<br>
	      		<label><input type="checkbox" name="escala" id="linkert" 
	      			value="linkert" onclick="verificaEscala(this);" >Escala Linkert</label>
	    		
	      		<label><input type="checkbox"  name="escala" id="eva" 
	      			value="eva" onclick="verificaEscala(this);" >Escala EVA</label>
			</div>
			
			
			<br><br>
			<div align="center">
				<a class="btn btn-lg btn-success" href="menuPrincipal.jsp">voltar</a>
				<input class="btn btn-lg btn-success" type="submit" value="Cadastrar"/>
			</div>
		</form>

	 </div>
	</div>
	<!-- /container -->

</body>
</html>