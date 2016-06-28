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
	<jsp:useBean id="dao" class="com.br.dao.GrupoDao" />

	<div class="container">
		<h2>Grupos Cadastrados</h2>
		
	<c:forEach var="grupo" items="${dao.lista}">
		<c:if test="${sessionScope.idAvaliadorAutenticado==grupo.idAvaliador2}">
			<div class="jumbotron">
				<table border="5" class="table  table-condensed ">
					<thead>
						<tr>
							<th>Nome do Software</th>
							<th>Nome do Grupo</th>
							<th>Quantidade de Participantes</th>
							<th>Descricao</th>
							
							<th>
								<div class="btn-group-vertical">
									<a class=" btn btn-success" href="menuPrincipal.jsp">Voltar</a>
								</div>
							</th>
						</tr>
					</thead>			
					<tbody>
						<tr>
							<td>${grupo.nomeSoftware}</td>
							<td>${grupo.nomeGrupo}</td>
							<td>${grupo.qtdParticipantes}</td>
							<td>${grupo.descricao}</td>
							<td>
								<div class="btn-group-vertical">
									<a href="ExcluirGrupoServlet?id=${grupo.id}"
										class=" btn btn-danger">Excluir</a>
									<a href="javascript:showhide('edit${grupo.id}')" class=" btn btn-primary">Editar</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div  id="edit${grupo.id}" style="display: none;">
					<form class="form-inline" method="post" action="EditaGrupoServlet">
						<input type="hidden" name="id" value="${grupo.id}" />
						<input type="hidden" name="idavaliador" value="${grupo.idAvaliador2}" />
						<input type="hidden" name="idsoftware" value="${grupo.idSoftware}" />
						<h3> Perfil do Grupo</h3>
						
						<div class="form-group">
      						<label>Nome do Software</label>
      						<input type="text" class="form-control" name="nomesoftware" 
      							value="${grupo.nomeSoftware}"/>
					    </div>
					    <div class="form-group">
					    	<label>Nome do Grupo</label>
					    	<input type="text" class="form-control" name="nomegrupo" 
					    		value="${grupo.nomeGrupo}"/>
					    </div>
					    <br><br>
					    <div class="form-group">
					    	<label>Qtd Participantes</label>
						    <input type="text" class="form-control" name="participantes" 
						      	value="${grupo.qtdParticipantes}"/>
						</div>
					    
					    <div class="form-group">
							<label>Descrição:</label>
							<input type="text" class="form-control" name="descricao" 
								value="${grupo.descricao}"/>
						</div>
						<br><br>
						<div align="center">
							<input type="submit" class=" btn btn-success" value="Salvar">
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