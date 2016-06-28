package com.br.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.br.dao.ParticipanteDao;
import com.br.modelo.Participante;


@WebServlet("/AdicionaParticipanteServlet")
public class AdicionaParticipanteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		Long idAvaliador = (Long) session.getAttribute("idAvaliador");
		String nomeParticipante = (String) session.getAttribute("nomeParticipante");
		String dataNascimento = (String) session.getAttribute("datanascimento");
		String genero = (String) session.getAttribute("genero");
		String email = (String) session.getAttribute("email");
		String escala = (String) session.getAttribute("escala");
		int codigoAvaliacao = (int) session.getAttribute("codigoAvaliacao");
		String nomeSoftware = (String) session.getAttribute("nomeSoftware");
		String nomeGrupo = (String) session.getAttribute("nomeGrupo");
		int item1 = (int) session.getAttribute("questao1");
		int item2 = (int) session.getAttribute("questao2");
		int item3 = (int) session.getAttribute("questao3");
		int item4 = (int) session.getAttribute("questao4");
		int item5 = (int) session.getAttribute("questao5");
		int item6 = (int) session.getAttribute("questao6");
		int item7 = (int) session.getAttribute("questao7");
		int item8 = (int) session.getAttribute("questao8");
		int item9 = (int) session.getAttribute("questao9");
		int item10 = (int) session.getAttribute("questao10");
		
		System.out.println("id: "+ idAvaliador);
		System.out.println("nome: "+ nomeParticipante);
		System.out.println("data: " + dataNascimento);
		System.out.println("genero: "+ genero);
		System.out.println("email: "+ email);
		System.out.println("escala: "+ escala);
		System.out.println("codigo: " + codigoAvaliacao);
		System.out.println("nome Software : " + nomeSoftware);
		System.out.println("nome grupo : " + nomeGrupo);
		System.out.println("questao1 : " + item1);
		System.out.println("questao2 : " + item2);
		System.out.println("questao3 : " + item3);
		System.out.println("questao4 : " + item4);
		System.out.println("questao5 : " + item5);
		System.out.println("questao6 : " + item6);
		System.out.println("questao7 : " + item7);
		System.out.println("questao8 : " + item8);
		System.out.println("questao9 : " + item9);
		System.out.println("questao10 : " + item10);
		
		Participante participante = new Participante();
		
		participante.setIdAvaliador(idAvaliador);
		participante.setNomeParticipante(nomeParticipante);
		participante.setDataNascimento(dataNascimento);
		participante.setGenero(genero);
		participante.setEmail(email);
		participante.setEscala(escala);
		participante.setCodigoAvaliacao(codigoAvaliacao);
		participante.setNomeSoftware(nomeSoftware);
		participante.setNomeGrupo(nomeGrupo);		
		participante.setItem1(item1);
		participante.setItem2(item2);
		participante.setItem3(item3);
		participante.setItem4(item4);
		participante.setItem5(item5);
		participante.setItem6(item6);
		participante.setItem7(item7);
		participante.setItem8(item8);
		participante.setItem9(item9);
		participante.setItem10(item10);
		
		
		try {
			ParticipanteDao dao = new ParticipanteDao();
			dao.adiciona(participante);	
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		session.removeAttribute("idAvaliador");
		session.removeAttribute("nomeParticipante");
		session.removeAttribute("datanascimento");
		session.removeAttribute("genero");
		session.removeAttribute("email");
		session.removeAttribute("escala");
		session.removeAttribute("codigoAvaliacao");
		session.removeAttribute("nomeSoftware");
		session.removeAttribute("nomeGrupo");
		session.removeAttribute("questao1");
		session.removeAttribute("questao2");
		session.removeAttribute("questao3");
		session.removeAttribute("questao4");
		session.removeAttribute("questao5");
		session.removeAttribute("questao6");
		session.removeAttribute("questao7");
		session.removeAttribute("questao8");
		session.removeAttribute("questao9");
		session.removeAttribute("questao10");
		
	response.sendRedirect("sucesso/obrigado.jsp");	
			
	}
}
