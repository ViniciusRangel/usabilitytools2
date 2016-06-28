<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta Http-Equiv="Cache-Control" Content="no-cache">  
<meta Http-Equiv="Pragma" Content="no-cache">  
<meta Http-Equiv="Expires" Content="0"> 

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="static/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="static/js/bootstrap.min.js"></script>


<title>Insert title here</title>

<script type="text/javascript">
		function showhide(id) {
			var j = document.getElementById(id);
			j.style.display = (j.style.display == 'block') ? 'none' : 'block';
 		}
	</script>

</head>
<body>

<%
   	String nomeAvaliador = (String) session.getAttribute("avaliadorAutenticado");
   		if(nomeAvaliador == null)
			throw new ServletException("Nenhum Usuário Logado");
   		
   	
    %>

	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="com.br.dao.AvaliacaoDao" />

	<div class="container">
		<h2>Avaliações Cadastradas</h2>
		
	<c:forEach var="avaliacao" items="${dao.lista}">
		<c:if test="${sessionScope.idAvaliadorAutenticado==avaliacao.idAvaliador3}">
			<div class="jumbotron">
				<table border="5" class="table  table-condensed ">
					<thead>
						<tr>
							<th>Nome do Software</th>
							<th>Nome do Grupo</th>
							<th>Escala</th>
							<th>Codigo da Avaliação</th>
							
							<th>
								<div class="btn-group-vertical">
									<a class=" btn btn-success" href="menuPrincipal.jsp">Voltar</a>
								</div>
							</th>
						</tr>
					</thead>			
					<tbody>
						<tr>
							<td>${avaliacao.nomeSoftware}</td>
							<td>${avaliacao.nomeGrupo}</td>
							<td>${avaliacao.escala}</td>
							<td>${avaliacao.codigoAvaliacao}</td>
							<td>
								<div class="btn-group-vertical">
									<a href="ExcluirAvaliacaoServlet?id=${avaliacao.id}"
										class=" btn btn-danger">Excluir</a>
									<a href="javascript:showhide('edit${avaliacao.id}')" 
										class=" btn btn-primary">Editar</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div  id="edit${avaliacao.id}" style="display: none;">
					<form class="form-inline" action="EditaAvaliacaoServlet" method="post">
						<input type="hidden" name="id" value="${avaliacao.id}" />
						<input type="hidden" name="idavaliador" value="${avaliacao.idAvaliador3}" />
						<input type="hidden" name="idsoftware" value="${avaliacao.idSoftware}" />
						<input type="hidden" name="idgrupo" value="${avaliacao.idGrupo}" />
					
						<h3> Dados da Avaliação</h3>
					
						<div class="form-group">
      						<label>Nome do Software</label>
      						<input type="text" class="form-control" 
      							name="nomesoftware" value="${avaliacao.nomeSoftware}"/>
					    </div>
					    <div class="form-group">
					    	<label>Nome do Grupo</label>
					    	<input type="text" class="form-control" 
					    		name="nomegrupo" value="${avaliacao.nomeGrupo}"/>
					    </div>
						<br><br>
					    <div class="form-group">
						      <label>Escala Escolhida</label>
						      <input type="text" class="form-control" 
						      	name="escala" value="${avaliacao.escala}"/>
						</div>
					    
					    <div class="form-group">
						      <label>Codigo da Avaliacao:</label>
						      <input type="text" class="form-control" 
						      	name="codigo" value="${avaliacao.codigoAvaliacao}"/>
						</div>
						<br><br>
						
						<div align="center">
							<input type="submit" class=" btn btn-success" value="Salvar"/>
						</div>
						 
					</form>
				</div>
			</div>
		</c:if>
	</c:forEach>			
	<a class=" btn btn-success" href="menuPrincipal.jsp">Voltar</a>
	</div>

</body>
</html>