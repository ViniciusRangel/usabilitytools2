<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Resultados</title>

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

<style type="text/css">
	.grid_480 {
		width: 480
	}
	
	.margin-top-60 {
		margin-top: 60px
	}
	
	.margin-bottom-60 {
		margin-bottom: 60px
	}
	
	.f-left {
		float: left
	}
</style>

</head>
<body>

<div class="container">
	
	<div align="center">
		<h3 class="text-muted">Resultado Acumulado da Avaliação!</h3>
	</div>
	
	<div align="center">
		<p>Insira o Código da Avaliação para</p>
		<form class="form-inline" action="ResultadoServlet" method="get">
			
				<label>Código</label> 
				<input type="text" name="codigo"> 
				<input type="submit" value="Enviar">
				
		</form>
	</div>
	<br><br>
	<jsp:useBean id="dao" class="com.br.dao.GrupoDao" />
		<c:forEach var="grupo" items="${dao.lista}">
			<c:if test="${sessionScope.idAvaliadorAutenticado==grupo.idAvaliador2 and nomeGrupo==grupo.nomeGrupo }">
				<c:set var="total" value="${grupo.qtdParticipantes}" ></c:set>
			</c:if>
		</c:forEach>
	
	<div align="center">
		<table class="table table-striped">
			<tr>
				<th>Software Avaliado</th>
				<th>Grupo</th>
				<th>Total Participantes</th>
				<th>Participantes que Avaliaram </th>
			</tr>
			<tr>
				<td>${nomeSoftware}</td>
				<td>${nomeGrupo}</td>
				<td>${total}</td>
				<td>${qtdParticipantes}</td>
			</tr>
		</table>
	</div>
	
	<br><br>
	<div style="float: left; width: 45%">
				<table class=" table-striped" align="center">
					<tr>
						<th>N   .</th>
						<th>   Questão</th>
						<th>Pontuação Acumulada</th>
					</tr>
					<tr>
						<td>Q1</td>
						<td>Acho que gostaria de usar este sistema com freqüência.</td>
						<td>${acumulado1}</td>
					</tr>
					<tr>
						<td>Q2</td>
						<td>Achei o sistema desnecessariamente complexo.</td>
						<td>${acumulado2}</td>
					</tr>
					<tr>
						<td>Q3</td>
						<td>Achei o sistema fácil de usar.</td>
						<td>${acumulado3}</td>
					</tr>
					<tr>
						<td>Q4</td>
						<td>Achei que seria necessário o apoio de um técnico para poder usar este sistema.</td>
						<td>${acumulado4}</td>
					</tr>
					<tr>
						<td>Q5</td>
						<td>As funções deste sistema estavam bem integradas.</td>
						<td>${acumulado5}</td>
					</tr>
					<tr>
						<td>Q6</td>
						<td>Achei este sistema muito inconsistente.</td>
						<td>${acumulado6}</td>
					</tr>
					<tr>
						<td>Q7</td>
						<td>Imagino que a maioria das pessoas aprenderiam a usar este sistema rapidamente.</td>
						<td>${acumulado7}</td>
					</tr>
					<tr>
						<td>Q8</td>
						<td>Achei o sistema muito incomodo e complicado de usar.</td>
						<td>${acumulado8}</td>
					</tr>
					<tr>
						<td>Q9</td>
						<td>Eu me senti seguro e confiante para usar o sistema.</td>
						<td>${acumulado9}</td>
					</tr>
					<tr>
						<td>Q10</td>
						<td>Eu preciso aprender um monte de coisas antes de continuar usando este sistema.</td>
						<td>${acumulado10}</td>
					</tr>
					<tr>
						<td> </td>
						<td>Indice de Satisfação e Usabilidade</td>
						<td>${score}</td>
					</tr>
				</table>
	</div>
	
	<div style="float: right; width: 45%">
		<br>
				<img
					src="http://chart.apis.google.com/chart?
					cht=bvg&
					chtt=Pontuação Acumulada&
					chxt=x,y&
					chm=A,76A4FB,0,0,0|D,cc0000,0,0,2,1&
					chd=t:${acumulado1},${acumulado2},${acumulado3},${acumulado4},${acumulado5},
						${acumulado6},${acumulado7},${acumulado8},${acumulado9},${acumulado10}&
					chds=j&
					chco=C6D9FD&
					chg=10,10&
					chs=500x250&
					chbh=25,10,20&
					chxl=0:|Q1|Q2|Q3|Q4|Q5|Q6|Q7|Q8|Q9|Q10" />
	</div>	
</div>
<br>
<div align="center">
	<a class="btn btn-lg btn-success" href="menuPrincipal.jsp">voltar</a>
</div>
</body>
</html>