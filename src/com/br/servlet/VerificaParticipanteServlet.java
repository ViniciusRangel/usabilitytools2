package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.AvaliacaoDao;


@WebServlet("/VerificaParticipanteSERVLET")
public class VerificaParticipanteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
			String nomeParticipante = request.getParameter("nomeparticipante");
			String datanascimento = request.getParameter("datanascimento");
			String email = request.getParameter("email");
			String genero = request.getParameter("genero");
			
			HttpSession session = request.getSession();
			
			
			String escala=(String)session.getAttribute("escala");
			
			String page = null;
			
			session.setAttribute("nomeParticipante", nomeParticipante);
			session.setAttribute("datanascimento", datanascimento);
			session.setAttribute("email", email);
			session.setAttribute("genero", genero);
			
			if(escala.equals("linkert"))
				page="questionarioLinkert.jsp";
			else if(escala.equals("eva"))
				page="questionarioEva.jsp";
			else
				page="home.jsp";
				
			response.sendRedirect(page);
			
	}

}
