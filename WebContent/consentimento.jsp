<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<h3 class="text-muted">Termo de Consentimento</h3>
		</div>
		
		<div class="jumbotron">
			<div style="width:1000px;height:200px;line-height:3em;
				overflow:scroll;padding:5px;">
				<p >
				 
		<h3>1. Natureza da pesquisa: </h3>
			<h4>o Sra (sr.) está sendo convidada (o) a participar desta 
			pesquisa que tem como finalidade Avaliar a usabilidade de software 
			informado pelo avaliador que te repassou o código da avaliaçaõ<h4>
		
		<h3>2. Envolvimento na pesquisa: </h3>
			<h4>ao participar deste estudo a Sra (Sr) permitirá que o 
			(a) avaliador possa utiliza-lo para pesquisas e avaliações futuras. 
			A Sra (sr.) tem liberdade de se recusar a participar e ainda se recusar 
			a continuar participando em qualquer fase da avaliação, sem qualquer prejuízo. 
			Sempre que quiser poderá pedir mais informações sobre a avaliação 
			 para o Avaliador. </h4>
		<h3>3. Confidencialidade:</h3> 
		<h4>todas as informações coletadas nesta avaliação são estritamente confidenciais. 
			Somente o (a) avaliador(a) terá acesso e conhecimento dos dados.<h4>
		<h3>4. Benefícios:</h3> 
			<h4>ao participar desta pesquisa a sra (sr.) não terá nenhum 
			benefício direto. Entretanto, esperamos que este estudo traga 
			informações importantes sobre Usabilidade de sistemas de forma que o 
			conhecimento que será construído a partir desta pesquisa <h4> 
		<h3>5. Pagamento: a sra (sr.)</h3> 
			<h4>Não haverá nenhum tipo de despesa para participar 
			desta avaliação, bem como nada será pago por sua participação.<h4>
		
		<h4>Após estes esclarecimentos, solicitamos o seu consentimento 
		de forma livre para participar desta pesquisa. <h4>
		
		<h4>Obs: Não aceite esse termo se ainda tiver dúvida a respeito.<h4>
						
				</p>	
			</div>
			
		</div>
		
		<div class="form-inline">
			<div class="form-group" align="justify">
			<label > Não Estou de Acordo
				<input type="checkbox" name="consentimento" id="naoaceito" 
					value="masculino"> 
			</label> 
		</div>
		<br>
		<div class="form-group">
			<label>Estou de Acordo
				<input type="checkbox" name="consentimento" id="aceito"  
					value="feminino" onclick="showhide('proximo')"> 
			</label>
		</div>
		
		</div>
		
		<div class="form-inline" align="center">
			
			<div >	
				<a class="btn btn-lg btn-success" href="codigo.jsp" id="voltar" >
					Voltar</a>	
			</div>
			<div style="display: none;" id="proximo">	
				<a class="btn btn-lg btn-success"  href="informacaoParticipante.jsp" > 
					Proximo </a>	
			</div>		
		</div>	
		
	</div>
	<!-- /container -->
</body>
</html>