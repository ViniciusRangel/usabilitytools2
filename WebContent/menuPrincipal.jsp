<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-cache">  
<meta http-equiv="Pragma" content="no-cache">  
<meta http-equiv="Expires" content="0"> 

<title>Menu Principal</title>

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet" type="text/css"/>

<!-- Custom styles for this template -->
<link href="jumbotron-narrow.css" rel="stylesheet" type="text/css"/>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="static/js/ie-emulation-modes-warning.js"></script>

<link href="static/css/showhide.css" rel="stylesheet" type="text/css"/>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src='static/js/bootstrap.min.js'></script>
<script src='static/js/hideshow.js'></script>

<script>
  $(function () {
    $('.dropdown-toggle').dropdown();
  }); 
 <link rel='stylesheet'
		href='//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css' />
 
</script>

</head>

<body>

   <%
   	String nomeAvaliador = (String) session.getAttribute("avaliadorAutenticado");
   		if(nomeAvaliador == null)
			throw new ServletException("Nenhum Usuário Logado");
   		
   	
    %>

	<div class="container">
		<div class="header clearfix">
			<nav>
			<ul class="nav nav-pills pull-right">
				
				<li role="presentation"><a href="#">Nome:
					 <%=nomeAvaliador %> 
					</a></li>
				
				<li role="presentation"><a type="button"
					class="btn dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> Conta <span class="caret"></span> <span
						class="sr-only">Toggle Dropdown</span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Avaliações</a></li>
						<li><a href="editarConta.jsp">Editar Conta</a></li>
						<li><a href="excluirConta.jsp">Excluir Conta</a></li>
						<li class="divider"></li>
						<li role="presentation"> <a href="home.jsp">Sair</a></li>
					</ul>
				</li>
			</ul>
			</nav>	
		<h3 class="text-muted">Menu Principal</h3>
		</div>

		<div class="jumbotron">
		
			<p>
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="javascript:showhide('one')">1 Software para Avaliação</a>
			</p>
			
			<jsp:useBean id="dao" class="com.br.dao.SoftwareDao" />
			<c:forEach var="soft" items="${dao.lista}">
				<c:if test="${sessionScope.idAvaliadorAutenticado==soft.idAvaliador}">
					<c:set var="usuario" value="${soft.id}" ></c:set>
				</c:if>
			</c:forEach>
			
			<c:choose>
					<c:when test="${empty usuario}">
						<div class="uniquename one" id="one" style="display: none;">
							<a class="btn btn-lg btn-success color" href="cadastroSoftware.jsp">Cadastrar</a>
						</div>
					</c:when>
					<c:when test="${not empty usuario}">
						<div class="uniquename" id="one" style="display: none;">
							<a class="btn btn-lg btn-success color" href="cadastroSoftware.jsp">Cadastrar</a>
							<a class="btn btn-lg btn-success color" href="listaSoftware.jsp">Listar</a>
						</div>
					</c:when>
					<c:otherwise>
						
					</c:otherwise>
				</c:choose>
					
			<p>
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="javascript:showhide('two')">2 Grupo para Avaliação </a>
			</p>
			
			<jsp:useBean id="dao2" class="com.br.dao.GrupoDao" />
			<c:forEach var="grup" items="${dao2.lista}">
				<c:if test="${sessionScope.idAvaliadorAutenticado==grup.idAvaliador2}">
					<c:set var="grupo" value="${grup.id}" ></c:set>
				</c:if>
			</c:forEach>
			
			<c:choose>
					<c:when test="${empty grupo}">
						<div class="uniquename two one3  " id="two" style="display: none;">
							<a class="btn btn-lg btn-success color two" href="cadastroGrupo.jsp">Cadastrar</a>
						</div>
					</c:when>
					<c:when test="${not empty grupo}">
						<div class="uniquename two" id="two" style="display: none;">
							<a class="btn btn-lg btn-success color" href="cadastroGrupo.jsp">Cadastrar</a>
							<a class="btn btn-lg btn-success color" href="listaGrupo.jsp">Listar</a>
						</div>
					</c:when>
					<c:otherwise>
						
					</c:otherwise>
				</c:choose>

			
			<p>
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="javascript:showhide('three')">3 Avaliação</a>
			</p>

			<jsp:useBean id="dao3" class="com.br.dao.AvaliacaoDao" />
			<c:forEach var="avaliac" items="${dao3.lista}">
				<c:if test="${sessionScope.idAvaliadorAutenticado==avaliac.idAvaliador3}">
					<c:set var="avaliacao" value="${avaliac.id}" ></c:set>
				</c:if>
			</c:forEach>
			
			<c:choose>
					<c:when test="${empty avaliacao}">
						<div class="uniquename three one2" id="three" style="display: none;">
							<a class="btn btn-lg btn-success color" 
								href="cadastroAvaliacao.jsp">Cadastrar</a>
						</div>
					</c:when>
					<c:when test="${not empty avaliacao}">
						<div class="uniquename three" id="three" style="display: none;">
							<a class="btn btn-lg btn-success color" 
								href="cadastroAvaliacao.jsp">Cadastrar</a>
							<a class="btn btn-lg btn-success color" 
								href="ListaAvaliacao.jsp">Listar</a>
						</div>
					</c:when>
					<c:otherwise>
						
					</c:otherwise>
				</c:choose>


			<p>
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="javascript:showhide('four')" role="button">4 Resultado
					das Avaliações</a>
			</p>

			<div class="uniquename four" id="four" style="display: none;">
				<a class="btn btn-lg btn-success color" href="resultado.jsp">Avaliações</a>
				<a class="btn btn-lg btn-success color" href="comparacao.jsp" role="button">Comparativos</a>
				
			</div>

		</div>

	</div>
	<!-- /container -->
</body>
</html>