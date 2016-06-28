<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sucesso</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-cache">  
<meta http-equiv="Pragma" content="no-cache">  
<meta http-equiv="Expires" content="0"> 


<!-- Bootstrap core CSS -->
<link href="../static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../static/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet" type="text/css"/>



<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../static/js/ie-emulation-modes-warning.js"></script>

<link href="../static/css/showhide.css" rel="stylesheet" type="text/css"/>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src='../static/js/bootstrap.min.js'></script>
<script src='../static/js/hideshow.js'></script>


</head>
<body>

	<%
   	String nomeAvaliador = (String) session.getAttribute("avaliadorAutenticado");
   		if(nomeAvaliador == null)
			throw new ServletException("Nenhum Usuário Logado");
    %>
    <div align="center">
    	<h3 class="text-muted">
    		Grupo Cadastrado com Sucesso!
    	</h3>
    </div>
    
    <div class="container">
    	<div class="jumbotron">
			<div align="center">
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="../menuPrincipal.jsp" >
					Voltar para o Menu Principal
				</a>
				<a class="btn btn-lg btn-success mesmo-tamanho"
					href="../cadastroGrupo.jsp" >
					Cadastrar Outro Software 
				</a>
			</div>
		</div>
	</div>

</body>
</html>