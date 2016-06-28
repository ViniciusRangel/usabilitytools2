<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = (String) session.getAttribute("avaliadorAutenticado");
		System.out.println(nome);
		Long ID = (Long) session.getAttribute("idAvaliadorAutenticado");
		System.out.println(ID);	
		session.removeAttribute("avaliadorAutenticado");
		RequestDispatcher rd = request
				.getRequestDispatcher("login.jsp");
		rd.forward(request,response);
     %>
	<h3>Acesso Negado!</h3>
</body>
</html>