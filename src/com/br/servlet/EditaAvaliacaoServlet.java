package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.dao.AvaliacaoDao;
import com.br.modelo.Avaliacao;


@WebServlet("/EditaAvaliacaoServlet")
public class EditaAvaliacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id_texto = request.getParameter("id");
		String idAvaliador_texto = request.getParameter("idavaliador");
		String idSoftware_texto = request.getParameter("idsoftware");
		String idGrupo_texto = request.getParameter("idgrupo");
		String nomeSoftware = request.getParameter("nomesoftware");
		String nomeGrupo = request.getParameter("nomegrupo");
		String escala = request.getParameter("escala");
		String codigo_texto = request.getParameter("codigo");
		
		Long id = Long.parseLong(id_texto);
		Long idAvaliador = Long.parseLong(idAvaliador_texto);
		Long idSoftware = Long.parseLong(idSoftware_texto);
		Long idGrupo = Long.parseLong(idGrupo_texto);
		int codigo = Integer.parseInt(codigo_texto);
		
		Avaliacao avaliacao = new Avaliacao();
		
		avaliacao.setId(id);
		avaliacao.setIdAvaliador3(idAvaliador);
		avaliacao.setIdSoftware(idSoftware);
		avaliacao.setNomeSoftware(nomeSoftware);
		avaliacao.setIdGrupo(idGrupo);
		avaliacao.setNomeGrupo(nomeGrupo);
		avaliacao.setEscala(escala);
		avaliacao.setCodigoAvaliacao(codigo);
		
		try {
			AvaliacaoDao dao= new AvaliacaoDao();
			dao.altera(avaliacao);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		response.sendRedirect("ListaAvaliacao.jsp");
		
		
	}

}
