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

<title>Excluir Conta</title>

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<Link href="static/js/bootstrap.min.js">

<script src="static/js/ie-emulation-modes-warning.js"></script>


</head>
<body>
	<div class="container">
		<div class="header clearfix">
			
			<h3 class="text-muted">Usability Tools SUS</h3>
		</div>

		<div class="jumbotron">
			<h4></h4>
			<p class="lead">Deseja Realmente excluir sua conta da Usability Tools SUS?</p>
			<p>
				<a class="btn btn-lg btn-success" href="menuPrincipal.jsp" >Cancelar</a>
				<form action="ExcluirAvaliadorServlet" method="post" >
					<input class="btn btn-lg btn-success" type="submit" value="Confirmar"/>
				</form>
		</div>

		
		<footer class="footer">
		<p>&copy; 2016 Unb Gama, FGA.</p>
		</footer>

	</div>
	<!-- /container -->

</body>
</html>