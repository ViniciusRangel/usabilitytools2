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
				<td> 
					<input type="checkbox" name="q1" id="q1.1" value="1" onclick="teste1(this);">  1  </input>
					<input type="checkbox" name="q1" id="q1.2" value="2" onclick="teste1(this);">  2  </input> 
					<input type="checkbox" name="q1" id="q1.3" value="3" onclick="teste1(this);">  3  </input> 
					<input type="checkbox" name="q1" id="q1.4" value="4" onclick="teste1(this);">  4  </input> 
					<input type="checkbox" name="q1" id="q1.5" value="5" onclick="teste1(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
				<td>02</td>
				<td>Achei o sistema desnecessariamente complexo.</td>
				<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q2" id="q2.1" value="1" onclick="teste2(this);">  1  </input>
					<input type="checkbox" name="q2" id="q2.2" value="2" onclick="teste2(this);">  2  </input> 
					<input type="checkbox" name="q2" id="q2.3" value="3" onclick="teste2(this);">  3  </input> 
					<input type="checkbox" name="q2" id="q2.4" value="4" onclick="teste2(this);">  4  </input> 
					<input type="checkbox" name="q2" id="q2.5" value="5" onclick="teste2(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
				 
			</tr>
			
			<tr>
				<td>03</td>
				<td>Achei o sistema fácil de usar.</td>
				<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q3" id="q3.1" value="1" onclick="teste3(this);">  1  </input>
					<input type="checkbox" name="q3" id="q3.2" value="2" onclick="teste3(this);">  2  </input> 
					<input type="checkbox" name="q3" id="q3.3" value="3" onclick="teste3(this);">  3  </input> 
					<input type="checkbox" name="q3" id="q3.4" value="4" onclick="teste3(this);">  4  </input> 
					<input type="checkbox" name="q3" id="q3.5" value="5" onclick="teste3(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			</tr>
			
			<tr>
			<td>04</td>
			<td>Achei que seria necessário o apoio de um técnico para poder usar este sistema.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q4" id="q4.1" value="1" onclick="teste4(this);">  1  </input>
					<input type="checkbox" name="q4" id="q4.2" value="2" onclick="teste4(this);">  2  </input> 
					<input type="checkbox" name="q4" id="q4.3" value="3" onclick="teste4(this);">  3  </input> 
					<input type="checkbox" name="q4" id="q4.4" value="4" onclick="teste4(this);">  4  </input> 
					<input type="checkbox" name="q4" id="q4.5" value="5" onclick="teste4(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			
			</tr>
			
			<tr>
			<td>05</td>
			<td>As funções deste sistema estavam bem integradas.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q5" id="q5.1" value="1" onclick="teste5(this);">  1  </input>
					<input type="checkbox" name="q5" id="q5.2" value="2" onclick="teste5(this);">  2  </input> 
					<input type="checkbox" name="q5" id="q5.3" value="3" onclick="teste5(this);">  3  </input> 
					<input type="checkbox" name="q5" id="q5.4" value="4" onclick="teste5(this);">  4  </input> 
					<input type="checkbox" name="q5" id="q5.5" value="5" onclick="teste5(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			 
			</tr>
			
			<tr>
			<td>06</td>
			<td>Achei este sistema muito inconsistente.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q6" id="q6.1" value="1" onclick="teste6(this);">  1  </input>
					<input type="checkbox" name="q6" id="q6.2" value="2" onclick="teste6(this);">  2  </input> 
					<input type="checkbox" name="q6" id="q6.3" value="3" onclick="teste6(this);">  3  </input> 
					<input type="checkbox" name="q6" id="q6.4" value="4" onclick="teste6(this);">  4  </input> 
					<input type="checkbox" name="q6" id="q6.5" value="5" onclick="teste6(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			
			</tr>
			
			<tr>
			<td>07</td>
			<td>Imagino que a maioria das pessoas aprenderiam a usar este sistema rapidamente.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q7" id="q7.1" value="1" onclick="teste7(this);">  1  </input>
					<input type="checkbox" name="q7" id="q7.2" value="2" onclick="teste7(this);">  2  </input> 
					<input type="checkbox" name="q7" id="q7.3" value="3" onclick="teste7(this);">  3  </input> 
					<input type="checkbox" name="q7" id="q7.4" value="4" onclick="teste7(this);">  4  </input> 
					<input type="checkbox" name="q7" id="q7.5" value="5" onclick="teste7(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			
			</tr>
			
			<tr>
			<td>08</td>
			<td>Achei o sistema muito incomodo e complicado de usar.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q8" id="q8.1" value="1" onclick="teste8(this);">  1  </input>
					<input type="checkbox" name="q8" id="q8.2" value="2" onclick="teste8(this);">  2  </input> 
					<input type="checkbox" name="q8" id="q8.3" value="3" onclick="teste8(this);">  3  </input> 
					<input type="checkbox" name="q8" id="q8.4" value="4" onclick="teste8(this);">  4  </input> 
					<input type="checkbox" name="q8" id="q8.5" value="5" onclick="teste8(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			
			</tr>
			
			<tr>
			<td>09</td>
			<td>Eu me senti seguro e confiante para usar o sistema.</td>
			<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q9" id="q9.1" value="1" onclick="teste9(this);">  1  </input>
					<input type="checkbox" name="q9" id="q9.2" value="2" onclick="teste9(this);">  2  </input> 
					<input type="checkbox" name="q9" id="q9.3" value="3" onclick="teste9(this);">  3  </input> 
					<input type="checkbox" name="q9" id="q9.4" value="4" onclick="teste9(this);">  4  </input> 
					<input type="checkbox" name="q9" id="q9.5" value="5" onclick="teste9(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			
			</tr>
			
			<tr>
				<td>10</td>
				<td>Eu preciso aprender um monte de coisas antes de continuar usando este sistema.</td>
				<td>Discordo totalmente</td>
				<td> 
					<input type="checkbox" name="q10" id="q10.1" value="1" onclick="teste10(this);">  1  </input>
					<input type="checkbox" name="q10" id="q10.2" value="2" onclick="teste10(this);">  2  </input> 
					<input type="checkbox" name="q10" id="q10.3" value="3" onclick="teste10(this);">  3  </input> 
					<input type="checkbox" name="q10" id="q10.4" value="4" onclick="teste10(this);">  4  </input> 
					<input type="checkbox" name="q10" id="q10.5" value="5" onclick="teste10(this);">  5  </input>  
				</td>
				<td>Totalmente de acordo</td>
			</tr>
			<tr>
			<td></td><td></td><td></td><td></td><td></td>
			</tr>
			</table>
				
		</div>
		<center>
			<a class="btn btn-lg btn-success" href="consentimento.jsp" role="button">voltar</a>
			<input type="submit" class="btn btn-lg btn-success"value="Proximo"/>
		</center>
		</form>
		
	</div>
	<!-- /container -->

</body>
</html>