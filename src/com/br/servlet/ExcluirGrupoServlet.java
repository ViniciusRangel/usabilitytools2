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
import com.br.dao.GrupoDao;
import com.br.modelo.Avaliacao;
import com.br.modelo.Grupo;


@WebServlet("/ExcluirGrupoServlet")
public class ExcluirGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id =request.getParameter("id");
		
		System.out.println(id);
		
		
		GrupoDao dao=null;
		try {
			dao = new GrupoDao();
			List<Grupo> grupos = new ArrayList<Grupo>();
			grupos= dao.getLista();
			
			for (Grupo grupo :grupos) {
				if(grupo.getId().equals(Long.parseLong(id)))
					dao.remove(grupo);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request
				.getRequestDispatcher("listaGrupo.jsp");
		rd.forward(request,response);
		
		
	}

}
