package com.br.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.AvaliadorDao;
import com.br.modelo.Avaliador;

@WebServlet("/AdicionaAvaliadorServlet")
public class AdicionaAvaliadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		// buscando os parâmetros no request
		
		String page=null;	
		String nome = request.getParameter("j_username");
		String email = request.getParameter("j_email");
		String login = request.getParameter("j_login");
		String senha1 = request.getParameter("j_password");
		String senha2 = request.getParameter("j_password2");
		
		// salva o contato
		AvaliadorDao dao=null;
		try {
			dao = new AvaliadorDao();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		List<Avaliador> avaliadores= new ArrayList<Avaliador>();
		avaliadores=dao.getLista();
		
		for (Avaliador avaliador : avaliadores) {			
			if( avaliador.getEmail().contains(email) && senha1.equals(senha2) ){
				System.out.println("email cadastrado e senha 1 == senha2 ");
				String menssagem="Erro: Email ja Cadastrado";
				HttpSession session = request.getSession();
				session.setAttribute("menssagem", menssagem);
				page="cadastroAvaliador.jsp";
				break;
			
			}
			
		
			if( avaliador.getEmail().contains(email) && !senha1.equals(senha2) ){
				System.out.println("email cadastrado e senha 1 != senha2 ");
				String menssagem="Erro: Senhas Diferentes";
				HttpSession session = request.getSession();
				session.setAttribute("menssagem", menssagem);
				page="cadastroAvaliador.jsp";
				break;
			}
		
			if( !avaliador.getEmail().contains(email) && senha1.equals(senha2) ){
				System.out.println("email não cadastrado e senha 1 == senha2 ");
				
				avaliador.setNome(nome);
				avaliador.setEmail(email);
				avaliador.setLogin(login);
				avaliador.setSenha(senha1);
				avaliador.setSenha(senha2);
				
				dao.adiciona(avaliador);
				HttpSession session= request.getSession();
				session.removeAttribute("menssagem");
				
				page="sucesso/avaliadorSucesso.jsp";
					
				break;
				
			}
			
			if( !avaliador.getEmail().contains(email) && !senha1.equals(senha2) ){
				System.out.println("email não cadastrado e senha 1 != senha2 ");
				String menssagem="Erro: Senhas Diferentes";
				HttpSession session = request.getSession();
				session.setAttribute("menssagem", menssagem);
				page="cadastroAvaliador.jsp";
				break;
			}
		}
		
		response.sendRedirect(page);
	}
}
