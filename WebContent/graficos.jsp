<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    	<script type="text/javascript">
      		google.load("visualization", "1", {packages:["corechart"]});
      		function drawChart() {

      			var data = google.visualization.arrayToDataTable([
      		          ['Linguagem', 'Quando gosto dela'],
      		          ['Java',     40],
      		          ['PHP',      30],
      		          ['Javascript',  25],
      		          ['C#', 5],
      		          
      		        ]);
      				//opções para exibição do gráfico
      		        var options = {
      		          		title: 'Linguagens',//titulo do gráfico
      				is3D: true // false para 2d e true para 3d o padrão é false
      		        };
      				//cria novo objeto PeiChart que recebe 
      				//como parâmetro uma div onde o gráfico será desenhado
      		        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      				//desenha passando os dados e as opções
      		        chart.draw(data, options);
      		      }
      			//metodo chamado após o carregamento
      			 google.setOnLoadCallback(drawChart);
      </script>
</head>
<body>

	<!--<div id="chart_div" style="width: 900px; height: 500px;"></div>  -->
    	
    	
    	<img src="http://chart.apis.google.com/chart?cht=bvs&chxt=x,y&chd=t:20,40,60,80,30&chco=76A4FB&chs=200x125&chxl=0:|Jan|Fev|Mar|Abr|Mai" />

</body>
</html>