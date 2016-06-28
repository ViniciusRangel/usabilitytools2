<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE HTML>
<html lang="pt-br" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta Http-Equiv="Cache-Control" Content="no-cache">  
<meta Http-Equiv="Pragma" Content="no-cache">  
<meta Http-Equiv="Expires" Content="0"> 


<title>Cadastro Avaliador</title>

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<script> 
	function validarSenha(){ 
		
		var senha1= document.getElementById("j_password").value;
		var senha2= document.getElementById("j_password2").value;
		
		if(senha1==senha2){
			document.getElementById("f1").submit();
			
		}else{
			
			y='<div class="alert alert-danger"><strong>ERRO!</strong> Senhas Diferentes</div>';
			document.getElementById("div1").innerHTML=y;	
		}	
	} 
	

</script>


</head>

<body>

	<div class="container">
	 
	 <div class="jumbotron">

		<form action="AdicionaAvaliadorServlet" id="f1" class="form-signin" method="post">
			
			<h2 class="form-signin-heading">Cadastro do Avaliador</h2>
			
			<input type="text"  class="form-control" name="j_username" id="j_username"  required 
			placeholder="nome:" pattern=".{6,}"  autofocus 
			oninvalid="setCustomValidity('ERR0: Nome deve ter seis ou mais caracteres')"
			onchange="try{setCustomValidity('')}catch(e){}" >
			<br>
			
			
			<input type="email" class="form-control" name="j_email" id="j_email" required
			placeholder="email:"  pattern=".{3,}"
			oninvalid="setCustomValidity('ERR0: Email deve ter o simbolo @ ')"
			onchange="try{setCustomValidity('')}catch(e){}" >
			<br>
			
			<input type="text" class="form-control" name="j_login" id="j_login" required
			placeholder="login:"  pattern=".{6,}"
			oninvalid="setCustomValidity('ERR0: Login deve ter seis ou mais caracteres ')"
			onchange="try{setCustomValidity('')}catch(e){}" > 
			<br>		
			
			<input type="password" class="form-control" name="j_password" id="j_password" required
			placeholder="senha:"  pattern=".{6,}"
			oninvalid="setCustomValidity('ERR0: Senha deve ter no minimo 6 caracteres ')"
			onchange="try{setCustomValidity('')}catch(e){}" > 
			<br>
			 
			<input type="password" class="form-control" name="j_password2" id="j_password2" required
			placeholder="confirmar senha:"  pattern=".{6,}"
			oninvalid="setCustomValidity('ERR0: Senha ter no minimo 6 caracteres ')"
			onchange="try{setCustomValidity('')}catch(e){}" > 
			<br>
			
			<center>
				<a class="btn btn-lg btn-success" href="login.jsp" role="button">voltar</a>
				<input class="btn btn-lg btn-success" type="submit" value="Enviar"> 
			</center>
			<br>

				<c:choose>
					<c:when test="${sessionScope.menssagem=='Erro: Senhas Diferentes'}">
						<div class="alert alert-danger">
							<strong>ERRO!</strong> Senhas Diferentes!
						</div>
					</c:when>
					<c:when test="${sessionScope.menssagem=='Erro: Email ja Cadastrado'}">
						<div class="alert alert-danger">
							<strong>ERRO!</strong> Email ja Cadastrado!
						</div>
					</c:when>
					<c:otherwise>
						
					</c:otherwise>
				</c:choose>

				
			
		</form>

	 </div>
	</div>
	<!-- /container -->

</body>
</html>