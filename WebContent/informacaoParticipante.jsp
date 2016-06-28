<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Consentimento</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<Link href=static/js/bootstrap.min.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<script src="static/js/ie-emulation-modes-warning.js"></script>

<script src="static/js/verifica.js"></script>

<script type="text/javascript">
		function showhide(id) {
			var j = document.getElementById(id);
			j.style.display = (j.style.display == 'block') ? 'none' : 'block';	
 		}
	</script>

</head>

<body>
	<div class="container">
		<div class="header clearfix">
			<h3 class="text-muted">Informação do Participante</h3>
		</div>
		
		<div class="jumbotron">
			<form action="VerificaParticipanteSERVLET" class="form-inline" method="get" >
				
				<div class="form-group">
					<label>Nome</label>
					<input type="text" class="form-control" name="nomeparticipante"
						placeholder="Nome do participante" required pattern=".{6,}"
						oninvalid="setCustomValidity('ERR0: Nome deve ter seis ou mais caracteres')"
						onchange="try{setCustomValidity('')}catch(e){}" > 
				</div>
				<div class="form-group">
					<label>Data de Nascimento</label>
					<input type="date" class="form-control" name="datanascimento">		
				</div>
				<div class="form-group" align="center">
					
					<label>Email</label>
					<input type="email" name="email"  placeholder="Digite seu Email"
						class="form-control" id="email" required pattern=".{3,}"
						oninvalid="setCustomValidity('ERR0: Email deve ter o simbolo @ e ter 3 ou mais caracteres')"
						onchange="try{setCustomValidity('')}catch(e){}" >	
					
				</div>
				<br><br>
				<label>Gênero</label>
				<br>
				<div class="form-group" align="justify">
					<label > Masculino
						<input type="checkbox" name="genero" id="box1" 
							value="masculino" onclick="verificabox(this);"> 
					</label> 
				</div>
				<div class="form-group">
					<label> Feminino
						<input type="checkbox" name="genero" id="box2" 
							value="feminino" onclick="verificabox(this);"> 
					</label>
				</div>
				<div class="form-group"> 
					<label>  outro
						<input type="checkbox" name="genero" id="box3" 
							value="outro" onclick="verificabox(this);">
					</label> 
				</div>
				
				<br><br>
				<center>
					<a class="btn btn-lg btn-success" href="codigo.jsp">voltar</a>
					<input type="submit" value="proximo" class="btn btn-lg btn-success"/>
				</center>
			</form>
		</div>
		
	</div>
	<!-- /container -->
</body>
</html>