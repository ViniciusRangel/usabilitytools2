package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.GrupoDao;
import com.br.modelo.Grupo;


@WebServlet("/AdicionaGrupoServlet")
public class AdicionaGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Long ID = (Long) session.getAttribute("idAvaliadorAutenticado");	
		
		String idSoftware_texto = request.getParameter("idsoftware");
		String nomeSoftware = request.getParameter("software");
		String nomeGrupo = request.getParameter("nome");
		String qtdParticipantes = request.getParameter("participantes");
		String descricao = request.getParameter("descricao");
		
		Long idSoftware= (Long) Long.parseLong(idSoftware_texto);
		
		System.out.println(ID);
		System.out.println(idSoftware);
		System.out.println(nomeSoftware);
		System.out.println(nomeGrupo);
		System.out.println( qtdParticipantes);
		System.out.println(descricao);
		
		
		
		if(nomeSoftware==null){
			
			response.sendRedirect("erroCadastroGrupo.jsp");
			
		}
		else{
		
		
		Grupo grupo= new Grupo();
		grupo.setIdSoftware(idSoftware);
		grupo.setIdAvaliador2(ID);
		grupo.setNomeSoftware(nomeSoftware);
		grupo.setNomeGrupo(nomeGrupo);
		grupo.setQtdParticipantes(qtdParticipantes);
		grupo.setDescricao(descricao);
		
		
		try {
			GrupoDao dao = new GrupoDao();
			dao.adiciona(grupo);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		response.sendRedirect("sucesso/grupoSucesso.jsp");
		}
	}

}












