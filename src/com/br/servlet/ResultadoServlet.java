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


@WebServlet("/ResultadoServlet")
public class ResultadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		HttpSession session= request.getSession();
		Long id = (Long)session.getAttribute("idAvaliadorAutenticado");

		String codigo_texto = request.getParameter("codigo");
		
		int codigo = Integer.parseInt(codigo_texto);

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
		double questao1Acumulado=0;
		double questao2Acumulado=0;
		double questao3Acumulado=0;
		double questao4Acumulado=0;
		double questao5Acumulado=0;
		double questao6Acumulado=0;
		double questao7Acumulado=0;
		double questao8Acumulado=0;
		double questao9Acumulado=0;
		double questao10Acumulado=0;
		double score=0;

		for (Participante participante : particpantes) {

			if(participante.getIdAvaliador()== id && participante.getCodigoAvaliacao()== codigo){
				questao1Acumulado+=((participante.getItem1()-1)*2.5);
				questao2Acumulado+=((5-participante.getItem2())*2.5);
				questao3Acumulado+=(((participante.getItem3())-1)*2.5);
				questao4Acumulado+=((5-participante.getItem4())*2.5);
				questao5Acumulado+=(((participante.getItem5())-1)*2.5);
				questao6Acumulado+=((5-(participante.getItem6()))*2.5);
				questao7Acumulado+=(((participante.getItem7())-1)*2.5);
				questao8Acumulado+=((5-(participante.getItem8()))*2.5);
				questao9Acumulado+=(((participante.getItem9())-1)*2.5);
				questao10Acumulado+=((5-(participante.getItem10()))*2.5);
				score+=questao1Acumulado+questao2Acumulado+questao3Acumulado+
						questao4Acumulado+questao5Acumulado+questao6Acumulado+questao7Acumulado
						+questao8Acumulado+questao9Acumulado+questao10Acumulado;
				contador+=1;
				
				nomeSoftware = participante.getNomeSoftware();
				nomeGrupo = participante.getNomeGrupo();
			}
		}
		
		double acumulado1 = (questao1Acumulado/contador);
		double acumulado2 = (questao2Acumulado/contador);
		double acumulado3 = (questao3Acumulado/contador);
		double acumulado4 = (questao4Acumulado/contador);
		double acumulado5 = (questao5Acumulado/contador);
		double acumulado6 = (questao6Acumulado/contador);
		double acumulado7 = (questao7Acumulado/contador);
		double acumulado8 = (questao8Acumulado/contador);
		double acumulado9 = (questao9Acumulado/contador);
		double acumulado10 = (questao10Acumulado/contador);
		double scoreacumulado = (score/contador);


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
		System.out.println("Score acumulado: "+ scoreacumulado);
		
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
		
		request.getRequestDispatcher( "resultado.jsp" ).forward( request, response );

	}

}
