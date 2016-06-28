package com.br.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import javax.websocket.Session;


@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session= request.getSession(); 
		String nome = (String) session.getAttribute("avaliadorAutenticado");
		System.out.println(nome);
		Long ID = (Long) session.getAttribute("idAvaliadorAutenticado");
		System.out.println(ID);	
		session.removeAttribute("avaliadorAutenticado");
    	response.sendRedirect("login.jsp");
		
		
	}

}
