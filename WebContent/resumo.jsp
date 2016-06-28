<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>questionario Linkert</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="jumbotron-narrow.css" rel="stylesheet">

<script src="static/js/ie-emulation-modes-warning.js"></script>

<script src="static/js/verifica.js"></script>

</head>
<body>

	<div class="container">
		<div class="header clearfix">
			<h3 class="text-muted"> Resumo das Respostas </h3>
		</div>

	<div class="jumbotron">
	
	<form action="AdicionaParticipanteServlet" method="get">
		
		<p>Informações da Avaliação</p>
		<table border="5" class="table  table-condensed ">
			<tr>
				<th>Codigo da Avaliação</th>
				<th>Escala</th>
				<th>Nome do Software</th>
				<th>Nome do Grupo</th>
			</tr>
			<tr>
				<td>${sessionScope.codigoAvaliacao}</td>
				<td>${sessionScope.escala}</td>
				<td>${sessionScope.nomeSoftware}</td>
				<td>${sessionScope.nomeGrupo}</td>
			</tr>
		</table>
		
		<p>Informações dos participantes</p>
		<table border="5" class="table  table-condensed ">
			<tr>
				<th>Nome Participante</th>
				<th>Data Nascimento</th>
				<th>email</th>
				<th>Gênero</th>
			</tr>
			<tr>
				<td>${sessionScope.nomeParticipante}</td>
				<td>${sessionScope.datanascimento}</td>
				<td>${sessionScope.email}</td>
				<td>${sessionScope.genero}</td>
			</tr>
		</table>
		
		<p>Respostas dos questionários</p>
		<table border="5" class="table  table-condensed " >
			<tr>
				<th>Item 1</th>
				<th>Item 2</th>
				<th>Item 3</th>
				<th>Item 4</th>
				<th>Item 5</th>
				<th>Item 6</th>
				<th>Item 7</th>
				<th>Item 8</th>
				<th>Item 9</th>
				<th>Item 10</th>	
			</tr>
			<tr>
				<td>${sessionScope.questao1}</td>
				<td>${sessionScope.questao2}</td>
				<td>${sessionScope.questao3}</td>
				<td>${sessionScope.questao4}</td>
				<td>${sessionScope.questao5}</td>
				<td>${sessionScope.questao6}</td>
				<td>${sessionScope.questao7}</td>
				<td>${sessionScope.questao8}</td>
				<td>${sessionScope.questao9}</td>
				<td>${sessionScope.questao10}</td>
				
			</tr>
		</table>
		
		<div align="center">
			<a class=" btn btn-success" href="informacaoParticipante.jsp" >Voltar</a>
			<input type="submit" class=" btn btn-success" value="Enviar">
		</div>
		
	</form>
		
		
		</div>

	</div>
</body>
</html>