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

import com.br.dao.AvaliadorDao;
import com.br.modelo.Avaliador;

@WebServlet("/ExcluirAvaliadorServlet")
public class ExcluirAvaliadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		HttpSession session = request.getSession();
		Long id =(Long) session.getAttribute("idAvaliadorAutenticado");

		AvaliadorDao dao=null;
		try {
			dao = new AvaliadorDao();
			List<Avaliador> avaliadores = new ArrayList<Avaliador>();
			avaliadores= dao.getLista();

			for (Avaliador avaliador :avaliadores) {
				if(avaliador.getId().equals(id))
					dao.remove(avaliador);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher rd = request
				.getRequestDispatcher("home.jsp");
		rd.forward(request,response);
	}
}
