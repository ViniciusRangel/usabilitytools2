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

<title>questionario</title>

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
</head>
<body>

<div class="container">
		<div class="header clearfix">
			<h3 class="text-muted">Questionários SUS para avaliação de Usabilidade</h3>
		</div>
		<div align="center">
			<label>
			Software Avaliado:
			</label>
			${sessionScope.nomeSoftware}
			<label>
			Grupo: 
			</label>
				${sessionScope.nomeGrupo}
		</div>
		
		<form action="VerificaQuestionarioServlet" method="get">
		
		<div  align="center">	
			
			<table class=" table table-striped" align="center"> 
			<tr>
				<td>01</td> 
				<td>Acho que gostaria de usar este sistema com freqüência. </td>
				<td>Discordo totalmente</td>
				<td> <input name="q1" type="range" class="btn-success" min="0" max="100" step="1" value="0"> </td>
				<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
				<td>02</td>
				<td>Achei o sistema desnecessariamente complexo.</td>
				<td>Discordo totalmente</td>
				<td><input name="q2" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
				<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
				<td>03</td>
				<td>Achei o sistema fácil de usar.</td>
				<td>Discordo totalmente</td>
				<td><input name="q3" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>	
				<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>04</td>
			<td>Achei que seria necessário o apoio de um técnico para poder usar este sistema.</td>
			<td>Discordo totalmente</td>
			<td><input name="q4" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>05</td>
			<td>As funções deste sistema estavam bem integradas.</td>
			<td>Discordo totalmente</td>
			<td><input name="q5" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td> 
			</tr>
			
			<tr>
			<td>06</td>
			<td>Achei este sistema muito inconsistente.</td>
			<td>Discordo totalmente</td>
			<td><input name="q6" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>07</td>
			<td>Imagino que a maioria das pessoas aprenderiam a usar este sistema rapidamente.</td>
			<td>Discordo totalmente</td>
			<td><input name="q7" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>08</td>
			<td>Achei o sistema muito incomodo e complicado de usar.</td>
			<td>Discordo totalmente</td>
			<td><input name="q8" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>09</td>
			<td>Eu me senti seguro e confiante para usar o sistema.</td>
			<td>Discordo totalmente</td>
			<td><input name="q9" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
			<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
				<td>10</td>
				<td>Eu preciso aprender um monte de coisas antes de continuar usando este sistema.</td>
				<td>Discordo totalmente</td>
				<td><input name="q10" type="range" class="btn-success" min="0" max="100" step="1" value="0"></td>
				<td>Totalmente de acordo</td>
			</tr>
			<tr>
			<td></td><td></td><td></td>
			</tr>
			</table>
				
		</div>
		<center>
			<a class="btn btn-lg btn-success" href="consentimento.jsp" >voltar</a>
			<input type="submit"  class="btn btn-lg btn-success" value="Proximo"/>
		</center>
		
		</form>
		
	</div>
	<!-- /container -->

</body>
</html>