package com.br.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.dao.SoftwareDao;
import com.br.modelo.Software;


@WebServlet("/EditarSoftwareServlet")
public class EditarSoftwareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		String id_texto = request.getParameter("id");
		String idAvaliador_texto = request.getParameter("idavaliador");
		String nome = request.getParameter("nome");
		String link = request.getParameter("link");
		String descricao = request.getParameter("descricao");
		String inicioAtivacao = request.getParameter("inicio");
		String fimAtivacao = request.getParameter("fim");
		String faixaetariaInicial = request.getParameter("faixainicial");
		String faixaetariaFinal = request.getParameter("faixafinal");
		String genero = request.getParameter("genero");
		String escolaridade = request.getParameter("escolaridade");
		String observacao = request.getParameter("observacao");

		Long id = Long.parseLong(id_texto);
		Long idAvaliador = Long.parseLong(idAvaliador_texto);
		
		
		// monta o objeto avaliador
		Software software = new Software();
		
		software.setId(id);
		software.setIdAvaliador(idAvaliador);
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
		
		try {
			SoftwareDao dao= new SoftwareDao();
			dao.altera(software);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.sendRedirect("listaSoftware.jsp");
	}

}
