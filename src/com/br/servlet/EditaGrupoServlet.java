package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.dao.GrupoDao;
import com.br.modelo.Grupo;


@WebServlet("/EditaGrupoServlet")
public class EditaGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id_texto = request.getParameter("id");
		String idAvaliador_texto = request.getParameter("idavaliador");
		String idSoftware_texto = request.getParameter("idsoftware");
		String nomeSoftware = request.getParameter("nomesoftware");
		String nomeGrupo = request.getParameter("nomegrupo");
		String qtdParticipantes = request.getParameter("participantes");
		String descricao = request.getParameter("descricao");
		
		Long id = Long.parseLong(id_texto);
		Long idAvaliador = Long.parseLong(idAvaliador_texto);
		Long idSoftware = Long.parseLong(idSoftware_texto);
		
		Grupo grupo = new Grupo();
		
		grupo.setId(id);
		grupo.setIdAvaliador2(idAvaliador);
		grupo.setIdSoftware(idSoftware);
		grupo.setNomeSoftware(nomeSoftware);
		grupo.setNomeGrupo(nomeGrupo);
		grupo.setQtdParticipantes(qtdParticipantes);
		grupo.setDescricao(descricao);
		
		try {
			GrupoDao dao =new GrupoDao();
			dao.altera(grupo);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		response.sendRedirect("listaGrupo.jsp");
	}

}
