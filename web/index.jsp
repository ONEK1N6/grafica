<%-- 
    Document   : index
    Created on : 27 jun. 2024, 16:28:24
    Author     : KING SERPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : index
    Created on : 20 jun 2024, 17:23:24
    Author     : alum.l8
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <!-- Optional theme -->
        <link rel="stylesheet" ref="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    </head>
    <body>
        div>Grafico1</div>
        <div class="container">
            <h2 align="center">Technology Line Graph</h2>

            <div id="container"
                 style="width: 550px; height: 400px; margin: 0 auto"></div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script th:inline="javascript">            
            $(function(){
            Highcharts.chart('container', {
            chart: {
            type: 'column'
            },
                    title: {
                    text: 'Technology Popularity In India'
                    },
                    subtitle: {
                    text: 'All Details is not true its a dummy Map'
                    },
                    xAxis: {
                    categories: ${escuelas},
                            crosshair: true
                    },
                    yAxis: {
                    min: 0,
                            max:100,
                            title: {
                            text: 'Technology rating [in %]'
                            }
                    },
                    tooltip: {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                            '<td style="padding:0"><b>{point.y:.1f} K</b></td></tr>',
                            footerFormat: '</table>',
                            shared: true,
                            useHTML: true
                    },
                    plotOptions: {
                    column: {
                    pointPadding: 0.2,
                            borderWidth: 0
                    }
                    },
                    series: [{
                    name: 'Technology',
                            data: ${matriculados}
                    }]
            });
          });
        </script>
    </body>
</html>