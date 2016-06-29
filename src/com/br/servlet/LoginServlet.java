package com.br.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.AvaliadorDao;
import com.br.modelo.Avaliador;



@WebServlet("/j_security_check")
public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException ,IOException{

		// buscando os parâmetros no request
		String login = request.getParameter("j_login");
		String senha = request.getParameter("j_password");

		AvaliadorDao dao=null;
		try {
			dao = new AvaliadorDao();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		List<Avaliador> avaliadores = dao.getLista();
		
		String page=null;	

		for (Avaliador avaliador : avaliadores) {
			
			if(avaliador.getLogin().equals(login) && 
					avaliador.getSenha().equals(senha)){
				
				
				page="menuPrincipal.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("avaliadorAutenticado", login);
				session.setAttribute("idAvaliadorAutenticado", avaliador.getId());
				session.removeAttribute("menssagem");
				
				break;

			}else {
				
				page="erroLogin.jsp";
				String menssagem= "Erro: Login ou Senha";
				HttpSession session = request.getSession();
				session.setAttribute("menssagem", menssagem);
			}
				
		}
		response.sendRedirect(page);
		


	}				
}