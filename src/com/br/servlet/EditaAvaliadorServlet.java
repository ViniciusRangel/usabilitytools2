package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.dao.AvaliadorDao;
import com.br.modelo.Avaliador;

@WebServlet("/EditaAvaliadorServlet")
public class EditaAvaliadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id_texto = request.getParameter("id");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String senha2 = request.getParameter("senha2");
		
		Long id = Long.parseLong(id_texto);
		
		// monta o objeto avaliador
		Avaliador avaliador = new Avaliador();
		
		avaliador.setId(id);
		avaliador.setNome(nome);
		avaliador.setEmail(email);
		avaliador.setLogin(login);
		avaliador.setSenha(senha);
		avaliador.setSenha2(senha2);
		
		try {
			AvaliadorDao dao = new AvaliadorDao();
			dao.altera(avaliador);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("menuPrincipal.jsp");
		
	}

}
