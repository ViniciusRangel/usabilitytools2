package com.br.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.AvaliacaoDao;
import com.br.modelo.Avaliacao;


@WebServlet("/AdicionaAvaliacaoServlet")
public class AdicionaAvaliacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Long ID = (Long) session.getAttribute("idAvaliadorAutenticado");
		
		String idSoftware_texto = request.getParameter("idsoftware");
		String nomeSoftware = request.getParameter("software");
		String idGrupo_texto = request.getParameter("idgrupo");
		String nomeGrupo = request.getParameter("grupo");
		String escala = request.getParameter("escala");
		
		Long idSoftware = Long.parseLong(idSoftware_texto);
		Long idGrupo = Long.parseLong(idGrupo_texto);
		
		Random gerador = new Random();
		int codigo= gerador.nextInt();
				
		Avaliacao avaliacao = new Avaliacao();
		
		avaliacao.setIdAvaliador3(ID);
		avaliacao.setIdSoftware(idSoftware);
		avaliacao.setNomeSoftware(nomeSoftware);
		avaliacao.setIdGrupo(idGrupo);
		avaliacao.setNomeGrupo(nomeGrupo);
		avaliacao.setEscala(escala);
		avaliacao.setCodigoAvaliacao(codigo);
		
		try {
			AvaliacaoDao dao= new AvaliacaoDao();
			dao.adiciona(avaliacao);
			
			request.setAttribute( "codigo",codigo );
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher( "sucesso/avaliacaoSucesso.jsp" ).forward( request, response );
				
	}

}
