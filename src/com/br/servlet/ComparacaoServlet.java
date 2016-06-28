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

import com.br.dao.ParticipanteDao;
import com.br.modelo.Participante;

@WebServlet("/ComparacaoServlet")
public class ComparacaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		Long id = (Long)session.getAttribute("idAvaliadorAutenticado");

		String codigo_texto = request.getParameter("codigo1");
		String codigo2_texto = request.getParameter("codigo2");
		
		int codigo = Integer.parseInt(codigo_texto);
		int codigo2 = Integer.parseInt(codigo2_texto);

		List<Participante> particpantes= new ArrayList<Participante>();
		

		ParticipanteDao dao=null;
		try {
			dao = new ParticipanteDao();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			
		}

		particpantes=dao.getLista();
	
		String nomeSoftware=null;
		String nomeGrupo=null;
		int contador=0;
		int questao1Acumulado=0;
		int questao2Acumulado=0;
		int questao3Acumulado=0;
		int questao4Acumulado=0;
		int questao5Acumulado=0;
		int questao6Acumulado=0;
		int questao7Acumulado=0;
		int questao8Acumulado=0;
		int questao9Acumulado=0;
		int questao10Acumulado=0;
		
		String nomeSoftware2=null;
		String nomeGrupo2=null;
		int contador2=0;
		int questao1Acumulado2=0;
		int questao2Acumulado2=0;
		int questao3Acumulado2=0;
		int questao4Acumulado2=0;
		int questao5Acumulado2=0;
		int questao6Acumulado2=0;
		int questao7Acumulado2=0;
		int questao8Acumulado2=0;
		int questao9Acumulado2=0;
		int questao10Acumulado2=0;
		double score=0;
		double score2=0;
		
		for (Participante participante : particpantes) {

			if(participante.getIdAvaliador()== id && participante.getCodigoAvaliacao()== codigo){
				questao1Acumulado+=((participante.getItem1()-1)*2.5);
				questao2Acumulado+=((5-participante.getItem2())*2.5);
				questao3Acumulado+=((participante.getItem3()-1)*2.5);
				questao4Acumulado+=((5-participante.getItem4())*2.5);
				questao5Acumulado+=((participante.getItem5()-1)*2.5);
				questao6Acumulado+=((5-participante.getItem6())*2.5);
				questao7Acumulado+=((participante.getItem7()-1)*2.5);
				questao8Acumulado+=((5-participante.getItem8())*2.5);
				questao9Acumulado+=((participante.getItem9()-1)*2.5);
				questao10Acumulado+=((5-participante.getItem10())*2.5);
				score+=questao1Acumulado+questao2Acumulado+questao3Acumulado+
						questao4Acumulado+questao5Acumulado+questao6Acumulado+questao7Acumulado
						+questao8Acumulado+questao9Acumulado+questao10Acumulado;
				contador+=1;
				nomeSoftware = participante.getNomeSoftware();
				nomeGrupo = participante.getNomeGrupo();
			}
			
			if(participante.getIdAvaliador()== id && participante.getCodigoAvaliacao()== codigo2){
				questao1Acumulado2+=((participante.getItem1()-1)*2.5);
				questao2Acumulado2+=((5-participante.getItem2())*2.5);
				questao3Acumulado2+=((participante.getItem3()-1)*2.5);
				questao4Acumulado2+=((5-participante.getItem4())*2.5);
				questao5Acumulado2+=((participante.getItem5()-1)*2.5);
				questao6Acumulado2+=((5-participante.getItem6())*2.5);
				questao7Acumulado2+=((participante.getItem7()-1)*2.5);
				questao8Acumulado2+=((5-participante.getItem8())*2.5);
				questao9Acumulado2+=((participante.getItem9()-1)*2.5);
				questao10Acumulado2+=((5-participante.getItem10())*2.5);
				score2+=questao1Acumulado+questao2Acumulado+questao3Acumulado+
						questao4Acumulado+questao5Acumulado+questao6Acumulado+questao7Acumulado
						+questao8Acumulado+questao9Acumulado+questao10Acumulado;
				contador2+=1;
				nomeSoftware2 = participante.getNomeSoftware();
				nomeGrupo2 = participante.getNomeGrupo();
			}
			
		}
		
		int acumulado1 = (questao1Acumulado/contador);
		int acumulado2 = (questao2Acumulado/contador);
		int acumulado3 = (questao3Acumulado/contador);
		int acumulado4 = (questao4Acumulado/contador);
		int acumulado5 = (questao5Acumulado/contador);
		int acumulado6 = (questao6Acumulado/contador);
		int acumulado7 = (questao7Acumulado/contador);
		int acumulado8 = (questao8Acumulado/contador);
		int acumulado9 = (questao9Acumulado/contador);
		int acumulado10 = (questao10Acumulado/contador);
		double scoreacumulado = (score/contador);
		
		int acumulado1_2 = (questao1Acumulado2/contador2);
		int acumulado2_2 = (questao2Acumulado2/contador2);
		int acumulado3_2 = (questao3Acumulado2/contador2);
		int acumulado4_2 = (questao4Acumulado2/contador2);
		int acumulado5_2 = (questao5Acumulado2/contador2);
		int acumulado6_2 = (questao6Acumulado2/contador2);
		int acumulado7_2 = (questao7Acumulado2/contador2);
		int acumulado8_2 = (questao8Acumulado2/contador2);
		int acumulado9_2 = (questao9Acumulado2/contador2);
		int acumulado10_2 = (questao10Acumulado2/contador2);
		double scoreacumulado2 = (score2/contador);
		

		System.out.println("Grupo1");
		System.out.println("Acumulado questao1: "+ acumulado1);
		System.out.println("Acumulado questao2: "+ acumulado2);
		System.out.println("Acumulado questao3: "+ acumulado3);
		System.out.println("Acumulado questao4: "+ acumulado4);
		System.out.println("Acumulado questao5: "+ acumulado5);
		System.out.println("Acumulado questao6: "+ acumulado6);
		System.out.println("Acumulado questao7: "+ acumulado7);
		System.out.println("Acumulado questao8: "+ acumulado8);
		System.out.println("Acumulado questao9: "+ acumulado9);
		System.out.println("Acumulado questao10: "+ acumulado10);
		
		System.out.println("Grupo2");
		System.out.println("Acumulado questao1: "+ acumulado1_2);
		System.out.println("Acumulado questao2: "+ acumulado2_2);
		System.out.println("Acumulado questao3: "+ acumulado3_2);
		System.out.println("Acumulado questao4: "+ acumulado4_2);
		System.out.println("Acumulado questao5: "+ acumulado5_2);
		System.out.println("Acumulado questao6: "+ acumulado6_2);
		System.out.println("Acumulado questao7: "+ acumulado7_2);
		System.out.println("Acumulado questao8: "+ acumulado8_2);
		System.out.println("Acumulado questao9: "+ acumulado9_2);
		System.out.println("Acumulado questao10: "+ acumulado10_2);
		
		request.setAttribute( "acumulado1",acumulado1 );
		request.setAttribute( "acumulado2",acumulado2 );
		request.setAttribute( "acumulado3",acumulado3 );
		request.setAttribute( "acumulado4",acumulado4 );
		request.setAttribute( "acumulado5",acumulado5 );
		request.setAttribute( "acumulado6",acumulado6 );
		request.setAttribute( "acumulado7",acumulado7 );
		request.setAttribute( "acumulado8",acumulado8 );
		request.setAttribute( "acumulado9",acumulado9 );
		request.setAttribute( "acumulado10",acumulado10 );
		request.setAttribute( "score",scoreacumulado );
		
		request.setAttribute( "nomeSoftware",nomeSoftware );
		request.setAttribute( "nomeGrupo", nomeGrupo );
		request.setAttribute( "qtdParticipantes",contador );
		
		request.setAttribute( "acumulado1_2",acumulado1_2 );
		request.setAttribute( "acumulado2_2",acumulado2_2 );
		request.setAttribute( "acumulado3_2",acumulado3_2 );
		request.setAttribute( "acumulado4_2",acumulado4_2 );
		request.setAttribute( "acumulado5_2",acumulado5_2 );
		request.setAttribute( "acumulado6_2",acumulado6_2 );
		request.setAttribute( "acumulado7_2",acumulado7_2 );
		request.setAttribute( "acumulado8_2",acumulado8_2 );
		request.setAttribute( "acumulado9_2",acumulado9_2 );
		request.setAttribute( "acumulado10_2",acumulado10_2 );
		request.setAttribute( "score2",scoreacumulado2 );
		
		request.setAttribute( "nomeSoftware2",nomeSoftware2 );
		request.setAttribute( "nomeGrupo2", nomeGrupo2 );
		request.setAttribute( "qtdParticipantes2",contador2 );
		
		request.getRequestDispatcher( "comparacao.jsp" ).forward( request, response );

		
		
	}

}
