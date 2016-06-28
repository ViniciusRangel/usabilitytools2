<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
    
<title>código</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet"> 

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">   

   
</head>
<body>
	<div class="container" >
	
		<div class="jumbotron">
		
		<form  action="VerificaCodigoServlet" class="form-signin" method="get">
			<h2 >Insira o código da avaliação da qual deseja participar</h2>
			
			
			
			<input type="text" name="codigo" class="form-control" required
				placeholder="Código da Avaliação"> </input>
				
				
			<a class="btn btn-lg btn-success" href="home.jsp" role="button">Voltar</a>
			<input type="submit" value="Enviar" class="btn btn-lg btn-success"  />
			
		</form>
		
		</div>

	</div>
	<!-- /container -->

</body>

</body>
</html>