<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Cadastro Software</title>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<Link href="static/js/bootstrap.min.js">


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<script src="static/js/ie-emulation-modes-warning.js"></script>

<script src="static/js/verifica.js"></script>

</head>

<body>

	<div class="container">

	<div class="jumbotron">
		<form action="SoftwareServlet" class="form" method="get">
		<table>
		<tr>
			<th>
				<h2 class="form-signin-heading" align="center">Cadastro do Software</h2>
			</th>
			<th>
				<h2 class="form-signin-heading" align="right">Perfil do Usuário do Software</h2>
			</th>
		</tr>
		<tr>
			<td>
			
				
				<div class="form-signin" align="left">
					
					<label>Nome</label> 
					<input type="text" class="form-control" 
						name="nome" required autofocus placeholder="nome do software" pattern=".{2,}"
						oninvalid="setCustomValidity('ERR0: Nome deve ter 2 ou mais caracteres ')"
						onchange="try{setCustomValidity('')}catch(e){}"> 
					
					<label>Link</label>
					<input type="text" class="form-control" name="link" autofocus
						placeholder="link do site:"> 
					
					<label>Descrição</label>
					<textarea class="form-control" name="descricao" cols="40" rows="3"
						placeholder="Descrição do Software"></textarea>
				
				</div>	
				
				
				<div class="form-inline" align="center">
					<p>Período de ativação do Software</p>
					
					<div class="form-group">
						<label>Início</label> 
						<input type="date" class="form-control" name="inicio" required>
					</div>
	
					<div class="form-group">
						<label>Fim</label> 
						<input type="date" class="form-control" name="fim" required>
					</div>
				
				</div>
			</td>
			<td>
				
				<div class="form-inline" align="right">
					
					<label>De</label>
					<input type="text" class="form-control" name="inicial"
						placeholder="Faixa etaria Inicial:" required>  
					<label>Até</label>
					<input type="text" class="form-control" name="final"
						placeholder="Faixa etaria final:" required>  
				</div>
				<br><br>
				<div class="form-inline" align="center">
					
					<div class="form-group">
						<label > 
							<input type="checkbox" name="genero" id="box1" value="masculino" onclick="verificabox(this);"> 
						Masculino 
						</label> 
					</div>
					<div class="form-group">
						<label> 
							<input type="checkbox" name="genero" id="box2" value="feminino" onclick="verificabox(this);"> 
						Feminino
						</label>
					</div>
					<div class="form-group"> 
						<label>
							<input type="checkbox" name="genero" id="box3" value="outro" onclick="verificabox(this);">
						outro
						</label> 
					</div>
				</div>
						
				<div class="form-signin">
					<label>Escolaridade</label>
					<select name="escolaridade" id="escolaridade" class="form-control"  >
						<option value="null">Nenhuma</option>
						<option value="PHD">PHD</option>
						<option value="Doutorado">Doutorado</option>
						<option value="Mestrado">Mestrado</option>
						<option value="Superior Completo">Superior Completo</option>
						<option value="Superior Incompleto">Superior Incompleto</option>
						<option value="Nível Médio">Nível Médio</option>
						<option value="Nível Fundamental">Nível Fundamental</option>
					</select>
					
					<label>Obsevação</label>
					<textarea  class="form-control" name="observacao"  cols="40" rows="3"
					placeholder="Observação Sobre o Usuario" required></textarea>
				</div>
				
			</td>
			
		</tr>
		<tr>
			
		</tr>
		</table>
			
			<div align="right">
				<a class="btn btn-lg btn-success" href="menuPrincipal.jsp" role="button">voltar</a>
				<input class="btn btn-lg btn-success" type="submit" value="Enviar" />
			</div>
			
		</form>
		
		 </div>
	
	</div>
	<!-- /container -->

</body>
</html>