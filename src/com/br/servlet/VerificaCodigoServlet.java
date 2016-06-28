package com.br.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.AvaliacaoDao;
import com.br.modelo.Avaliacao;
import com.br.modelo.Avaliador;


@WebServlet("/VerificaCodigoServlet")
public class VerificaCodigoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String cod = request.getParameter("codigo");
		List<Avaliacao> avaliacoes= new ArrayList<Avaliacao>();
		
		try {
			AvaliacaoDao dao= new AvaliacaoDao();
			avaliacoes=dao.getLista();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		int codigo= Integer.parseInt(cod);
		String page="home.jsp";	

		for (Avaliacao avaliacao : avaliacoes) {
			
			if(avaliacao.getCodigoAvaliacao()==codigo){
				
				HttpSession session = request.getSession();
				session.setAttribute("codigoAvaliacao", codigo);
				session.setAttribute("idAvaliador", avaliacao.getIdAvaliador3() );
				session.setAttribute("escala", avaliacao.getEscala());
				session.setAttribute("nomeGrupo", avaliacao.getNomeGrupo());
				session.setAttribute("nomeSoftware", avaliacao.getNomeSoftware());
				page="consentimento.jsp";
			}
			
		}
			System.out.println(page);
			System.out.println(codigo);
		
		RequestDispatcher dd =request.getRequestDispatcher(page);
		dd.forward(request, response);
		
		
	}

}
