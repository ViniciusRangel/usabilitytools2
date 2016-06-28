package com.br.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.br.dao.SoftwareDao;
import com.br.modelo.Software;

/**
 * Servlet implementation class AvaliadorServlet
 */
@WebServlet("/SoftwareServlet")
public class AdicionaSoftwareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		// busca o writer
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		Long ID = (Long) session.getAttribute("idAvaliadorAutenticado");	
		
		String nome = request.getParameter("nome");
		String link = request.getParameter("link");
		String descricao = request.getParameter("descricao");
		String inicioAtivacao = request.getParameter("inicio");
		String fimAtivacao = request.getParameter("fim");
		String faixaetariaInicial = request.getParameter("inicial");
		String faixaetariaFinal = request.getParameter("final");
		String genero = request.getParameter("genero");
		String escolaridade = request.getParameter("escolaridade");
		String observacao = request.getParameter("observacao");
		
		// monta um objeto avaliador
		Software software = new Software();
		software.setIdAvaliador(ID);
		software.setNome(nome);
		software.setLink(link);
		software.setDescricao(descricao);
		software.setInicioAtivacao(inicioAtivacao);
		software.setFimAtivacao(fimAtivacao);
		software.setFaixaetariaInicial(faixaetariaInicial);
		software.setFaixaetariaFinal(faixaetariaFinal);
		software.setGenero(genero);
		software.setEscolaridade(escolaridade);
		software.setObservacao(observacao);
	
		
		// salva o contato
		SoftwareDao dao;
		try {
			dao = new SoftwareDao();
			dao.adiciona(software);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		response.sendRedirect("sucesso/softwareSucesso.jsp");
		
		}
		
}
