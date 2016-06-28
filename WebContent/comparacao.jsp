<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Comparacao</title>
	
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
			<h3 class="text-muted">Comparações!</h3>
		</div>
		<br>
		
		<div align="center">
			<p>Insira o Código das Avaliações para compara-las!</p>
			<form class="form-inline" action="ComparacaoServlet" method="get">
				
					<label>Código da Avaliação 1</label> 
					<input type="text" name="codigo1"> 
				
					<label>Código da Avaliação2</label> 
					<input type="text" name="codigo2"> 
					
					<input type="submit" value="Enviar">
					
			</form>
		</div>
		<br><br>
		<jsp:useBean id="dao" class="com.br.dao.GrupoDao" />
			<c:forEach var="grupo1" items="${dao.lista}">
				<c:if test="${sessionScope.idAvaliadorAutenticado==grupo1.idAvaliador2 
						and nomeGrupo==grupo1.nomeGrupo }">
					<c:set var="total1" value="${grupo1.qtdParticipantes}" ></c:set>
				</c:if>
			</c:forEach>
			<c:forEach var="grupo2" items="${dao.lista}">
				<c:if test="${sessionScope.idAvaliadorAutenticado==grupo2.idAvaliador2 
						and nomeGrupo2==grupo2.nomeGrupo }">
					<c:set var="total2" value="${grupo2.qtdParticipantes}" ></c:set>
				</c:if>
			</c:forEach>
		
		<div align="center">
			<table class="table table-striped ">
				<tr>
					<th>Avaliação</th>
					<th>Software Avaliado</th>
					<th>Grupo</th>
					<th>Total Participantes</th>
					<th>Participantes que Avaliaram </th>
				</tr>
				<tr>
					<th> 1 </th>
					<td>${nomeSoftware}</td>
					<td>${nomeGrupo}</td>
					<td>${total1}</td>
					<td>${qtdParticipantes}</td>
				</tr>
				<tr>
					<th>  2</th>
					<td>${nomeSoftware2}</td>
					<td>${nomeGrupo2}</td>
					<td>${total2}</td>
					<td>${qtdParticipantes2}</td>
				</tr>
			</table>
		</div>
		
		<br><br>
		<div >
			<table class=" table table-striped" >
				<tr>
					<th>Numero   .</th>
					<th>Questão</th>
					<th>Pontuação acumulada Grupo1</th>
					<th>Pontuação  acumulada Grupo2</th>
				</tr>
				<tr>
					<td>Q1</td>
					<td>Acho que gostaria de usar este sistema com freqüência.</td>
					<td>${acumulado1}</td>
					<td>${acumulado1_2}</td>
				</tr>
				<tr>
					<td>Q2</td>
					<td>Achei o sistema desnecessariamente complexo.</td>
					<td>${acumulado2}</td>
					<td>${acumulado2_2}</td>
				</tr>
				<tr>
					<td>Q3</td>
					<td>Achei o sistema fácil de usar.</td>
					<td>${acumulado3}</td>
					<td>${acumulado3_2}</td>
				</tr>
				<tr>
					<td>Q4</td>
					<td>Achei que seria necessário o apoio de um técnico para poder usar este sistema.</td>
					<td>${acumulado4}</td>
					<td>${acumulado4_2}</td>
				</tr>
				<tr>
					<td>Q5</td>
					<td>As funções deste sistema estavam bem integradas.</td>
					<td>${acumulado5}</td>
					<td>${acumulado5_2}</td>
				</tr>
				<tr>
					<td>Q6</td>
					<td>Achei este sistema muito inconsistente.</td>
					<td>${acumulado6}</td>
					<td>${acumulado6_2}</td>
				</tr>
				<tr>
					<td>Q7</td>
					<td>Imagino que a maioria das pessoas aprenderiam a usar este sistema rapidamente.</td>
					<td>${acumulado7}</td>
					<td>${acumulado7_2}</td>
				</tr>
				<tr>
					<td>Q8</td>
					<td>Achei o sistema muito incomodo e complicado de usar.</td>
					<td>${acumulado8}</td>
					<td>${acumulado8_2}</td>
				</tr>
				<tr>
					<td>Q9</td>
					<td>Eu me senti seguro e confiante para usar o sistema.</td>
					<td>${acumulado9}</td>
					<td>${acumulado9_2}</td>
				</tr>
				<tr>
					<td>Q10</td>
					<td>Eu preciso aprender um monte de coisas antes de continuar usando este sistema.</td>
					<td>${acumulado10}</td>
					<td>${acumulado10_2}</td>
				</tr>
				<tr>
					<td></td>
					<td>Indice de Satisfação e Usabilidade </td>
					<td>${score}</td>
					<td>${scor2}</td>
				</tr>
			</table>
		</div>
		<br>
		<div style="float: left; width: 65%">
		<br>
			<img src="http://chart.apis.google.com/chart?
				cht=bvg&
				chxt=x,y&
				chtt=Pontuação Acumulada&
				chd=t:${acumulado1},${acumulado2},${acumulado3},${acumulado4},${acumulado5},
						${acumulado6},${acumulado7},${acumulado8},${acumulado9},${acumulado10}|
						${acumulado1_2},${acumulado2_2},${acumulado3_2},${acumulado4_2},${acumulado5_2},
						${acumulado6_2},${acumulado7_2},${acumulado8_2},${acumulado9_2},${acumulado10_2}&
				chco=fa432a,C6D9FD&
				chs=700x300&
				chxl=0:|Q1|Q2|Q3|Q4|Q5|Q6|Q7|Q8|Q9|Q10&
				chxr=0,10&
				chds=0,100&
				chg=5,5&
				chdl=Avaliação 1|Avaliação 2" />
		</div>
		
		<div style="float: right; width: 25%">
		<br>
			<img
				src="http://chart.apis.google.com/chart?
				cht=bvg&
				chtt=Pontos SUS&
				chxt=x,y&
				chd=t:${score}|${score2}&
				chds=a&
				chco=C6D9FD&
				chg=10,10&
				chs=700x300&
				chxl=0:pontuação& 
				chdl=Avaliação 1|Avaliação 2" />
		</div>	
	</div>
	<br>
	<div align="center">
		<a class="btn btn-lg btn-success" href="menuPrincipal.jsp">voltar</a>
	</div>

</body>
</html>