<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
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
	<jsp:useBean id="dao" class="com.br.dao.SoftwareDao" />

	<div class="container">
		<h2>Softwares Cadastrados</h2>
		
	<c:forEach var="soft" items="${dao.lista}">
		<c:if test="${sessionScope.idAvaliadorAutenticado==soft.idAvaliador}">
			<div class="jumbotron">
				<table border="5" class="table  table-condensed ">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Link</th>
							<th>Descricao</th>
							<th>Data Ativação</th>
							<th>Faixa Etaria</th>
							<th>Genero</th>
							<th>Escolaridade</th>
							<th>Observaçao</th>
							<th>
								<div class="btn-group-vertical">
									<a class=" btn btn-success" href="menuPrincipal.jsp">Voltar</a>
								</div>
							</th>
						</tr>
					</thead>			
					<tbody>
						<tr>
							<td>${soft.nome}</td>
							<td>${soft.link}</td>
							<td>${soft.descricao}</td>
							<td>		
								Inicio: 
								${soft.inicioAtivacao}
								<br>
								Fim: 
								${soft.fimAtivacao}
							</td>		
							<td>
							De: ${soft.faixaetariaInicial}	 		
							<br>	
							Até: ${soft.faixaetariaFinal}
							</td>
							<td>${soft.genero}</td>
							<td>${soft.escolaridade}</td>
							<td>${soft.observacao}</td>
							<td>
								<div class="btn-group-vertical">
									<a href="ExcluirSoftwareServlet?id=${soft.id}"
										class=" btn btn-danger">Excluir</a>
									<a href="javascript:showhide('edit${soft.id}')" class=" btn btn-primary">Editar</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div  id="edit${soft.id}" style="display: none;">
					<form class="form-inline" action="EditarSoftwareServlet" method="post">
					<input type="hidden" name="id" value="${soft.id}" />
					<input type="hidden" name="idavaliador" value="${soft.idAvaliador}" />
					<h3> Perfil do Software</h3>
						<div class="form-group">
      						<label>Nome:</label>
      						<input type="text" class="form-control" name="nome" value="${soft.nome}"/>
					    </div>
					    <div class="form-group">
					    	<label>Link:</label>
					    	<input type="text" class="form-control" name="link" value="${soft.link}"/>
					    </div>
					    <div class="form-group">
						      <label>Descrição:</label>
						      <input type="text" class="form-control" name="descricao" 
						      	value="${soft.descricao}"/>
						</div>
						<br><br>
						<label> Período de ativação</label><br>
						 	<label >Inicio</label>
						     <input type="date" class="form-control" 	
						     	name="inicio" value="${soft.inicioAtivacao}"  />
					
						
						      <label>Fim</label>
						      <input type="date" class="form-control"
						      	name="fim" value="${soft.fimAtivacao}"/>
						
						<h3> Perfil do Usuario</h3>
						
						<div class="form-group">
						      <label>Gênero</label>
						      <select name="genero" id="genero" class="form-control" >
								<option value="${soft.genero}">${soft.genero}</option>
								<option value="Masculino">Masculino</option>
								<option value="Feminino">Feminino</option>
								<option value="Outro">Outro</option>
						      
						      </select>	
						      	
						</div>
						<div class="form-group">
						    <label>Escolaridade</label>
							<select name="escolaridade" id="escolaridade" class="form-control"  >
								<option value="${soft.escolaridade}">${soft.escolaridade}</option>
								<option value="PHD">PHD</option>
								<option value="Doutorado">Doutorado</option>
								<option value="Mestrado">Mestrado</option>
								<option value="Superior Completo">Superior Completo</option>
								<option value="Superior Incompleto">Superior Incompleto</option>
								<option value="Nível Médio">Nível Médio</option>
								<option value="Nível Fundamental">Nível Fundamental</option>
							</select>
						</div>
						<div class="form-group">
						      <label>Observação</label>
						      <input type="text" class="form-control" name="observacao" 
						      	value="${soft.observacao}"/>
						</div>
						<br><br>
						<label> Faixa Etaria</label><br>
						      <label >De</label>
						      <input type="text" class="form-control" 
						        name="faixainicial" value="${soft.faixaetariaInicial}"/>
						      <label >Até</label>
						      <input type="text" class="form-control" 
						        name="faixafinal" value="${soft.faixaetariaFinal}"/>
						        
						 <input type="submit" class=" btn btn-success" value="Salvar"/>
						    
						
					</form>
				</div>
			</div>
		</c:if>
	</c:forEach>			
	<a class=" btn btn-success" href="menuPrincipal.jsp">Voltar</a>
	</div>
</body>
</html>