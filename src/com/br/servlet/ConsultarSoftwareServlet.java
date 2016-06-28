package com.br.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.SoftwareDao;
import com.br.modelo.Software;
import com.sun.javafx.scene.paint.GradientUtils.Parser;

/**
 * Servlet implementation class ConsultarSoftwareServlet
 */
@WebServlet("/ConsultarSoftwareServlet")
public class ConsultarSoftwareServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException ,IOException{
		
		SoftwareDao dao=null;
		try {
			dao = new SoftwareDao();
			dao.getLista();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
			
			
		RequestDispatcher rd = request
				.getRequestDispatcher("listaSoftware.jsp");
		rd.forward(request,response);
	}

}
