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

import com.br.dao.AvaliacaoDao;
import com.br.modelo.Avaliacao;



@WebServlet("/ExcluirAvaliacaoServlet")
public class ExcluirAvaliacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		

		String id =request.getParameter("id");
		
		System.out.println(id);
		
		
		AvaliacaoDao dao=null;
		try {
			dao = new AvaliacaoDao();
			List<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
			avaliacoes= dao.getLista();
			
			for (Avaliacao avaliacao :avaliacoes) {
				if(avaliacao.getId().equals(Long.parseLong(id)))
					dao.remove(avaliacao);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request
				.getRequestDispatcher("ListaAvaliacao.jsp");
		rd.forward(request,response);
		
		
	}

}
