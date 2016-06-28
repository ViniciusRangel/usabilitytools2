package com.br.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/VerificaQuestionarioServlet")
public class VerificaQuestionarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		String escala=(String)session.getAttribute("escala");

		String item1 = request.getParameter("q1");
		String item2 = request.getParameter("q2");
		String item3 = request.getParameter("q3");
		String item4 = request.getParameter("q4");
		String item5 = request.getParameter("q5");
		String item6 = request.getParameter("q6");
		String item7 = request.getParameter("q7");
		String item8 = request.getParameter("q8");
		String item9 = request.getParameter("q9");
		String item10 = request.getParameter("q10");

		int questao1 = Integer.parseInt(item1);
		int questao2 = Integer.parseInt(item2);
		int questao3 = Integer.parseInt(item3);
		int questao4 = Integer.parseInt(item4);
		int questao5 = Integer.parseInt(item5);
		int questao6 = Integer.parseInt(item6);
		int questao7 = Integer.parseInt(item7);
		int questao8 = Integer.parseInt(item8);
		int questao9 = Integer.parseInt(item9);
		int questao10 = Integer.parseInt(item10);
		
		if(escala.equals("eva")){
			
			if(questao1>0 && questao1<=20){questao1=1;}
			else if(questao1>20 && questao1<=40){questao1=2;}
			else if(questao1>40 && questao1<=60){questao1=3;}
			else if(questao1>60 && questao1<=80){questao1=4;}
			else if(questao1>80 && questao1<=100){questao1=5;}
			
			if(questao2>0 && questao2<=20){questao2=1;}
			else if(questao2>20 && questao2<=40){questao2=2;}
			else if(questao2>40 && questao2<=60){questao2=3;}
			else if(questao2>60 && questao2<=80){questao2=4;}
			else if(questao2>80 && questao2<=100){questao2=5;}
			
			if(questao3>0 && questao3<=20){questao3=1;}
			else if(questao3>20 && questao3<=40){questao3=2;}
			else if(questao3>40 && questao3<=60){questao3=3;}
			else if(questao3>60 && questao3<=80){questao3=4;}
			else if(questao3>80 && questao3<=100){questao3=5;}
			
			if(questao4>0 && questao4<=20){questao4=1;}
			else if(questao4>20 && questao4<=40){questao4=2;}
			else if(questao4>40 && questao4<=60){questao4=3;}
			else if(questao4>60 && questao4<=80){questao4=4;}
			else if(questao4>80 && questao4<=100){questao4=5;}
			
			if(questao5>0 && questao5<=20){questao5=1;}
			else if(questao5>20 && questao5<=40){questao5=2;}
			else if(questao5>40 && questao5<=60){questao5=3;}
			else if(questao5>60 && questao5<=80){questao5=4;}
			else if(questao5>80 && questao5<=100){questao5=5;}
			
			if(questao6>0 && questao6<=20){questao6=1;}
			else if(questao6>20 && questao6<=40){questao6=2;}
			else if(questao6>40 && questao6<=60){questao6=3;}
			else if(questao6>60 && questao6<=80){questao6=4;}
			else if(questao6>80 && questao6<=100){questao6=5;}
			
			if(questao7>0 && questao7<=20){questao7=1;}
			else if(questao7>20 && questao7<=40){questao7=2;}
			else if(questao7>40 && questao7<=60){questao7=3;}
			else if(questao7>60 && questao7<=80){questao7=4;}
			else if(questao7>80 && questao7<=100){questao7=5;}
			
			if(questao8>0 && questao8<=20){questao8=1;}
			else if(questao8>20 && questao8<=40){questao8=2;}
			else if(questao8>40 && questao8<=60){questao8=3;}
			else if(questao8>60 && questao8<=80){questao8=4;}
			else if(questao8>80 && questao8<=100){questao8=5;}
			
			if(questao9>0 && questao9<=20){questao9=1;}
			else if(questao9>20 && questao9<=40){questao9=2;}
			else if(questao9>40 && questao9<=60){questao9=3;}
			else if(questao9>60 && questao9<=80){questao9=4;}
			else if(questao9>80 && questao9<=100){questao9=5;}
			
			if(questao10>0 && questao10<=20){questao10=1;}
			else if(questao10>20 && questao10<=40){questao10=2;}
			else if(questao10>40 && questao10<=60){questao10=3;}
			else if(questao10>60 && questao10<=80){questao10=4;}
			else if(questao10>80 && questao10<=100){questao10=5;}
			
		}
		
		
		
		
		session.setAttribute("questao1", questao1);
		session.setAttribute("questao2", questao2);
		session.setAttribute("questao3", questao3);
		session.setAttribute("questao4", questao4);
		session.setAttribute("questao5", questao5);
		session.setAttribute("questao6", questao6);
		session.setAttribute("questao7", questao7);
		session.setAttribute("questao8", questao8);
		session.setAttribute("questao9", questao9);
		session.setAttribute("questao10", questao10);

		response.sendRedirect("resumo.jsp");

	}

}
