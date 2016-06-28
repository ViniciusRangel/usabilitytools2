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

import com.br.dao.SoftwareDao;
import com.br.modelo.Software;


@WebServlet("/ExcluirSoftwareServlet")
public class ExcluirSoftwareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id =request.getParameter("id");
		
		System.out.println(id);
		
		
		SoftwareDao dao=null;
		try {
			dao = new SoftwareDao();
			List<Software> softwares = new ArrayList<Software>();
			softwares= dao.getLista();
			
			for (Software software :softwares) {
				if(software.getId().equals(Long.parseLong(id)))
					dao.remove(software);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request
				.getRequestDispatcher("listaSoftware.jsp");
		rd.forward(request,response);
		
	}

}
