<%-- 
    Document   : ad_index
    Created on : 1 may 2025, 12:26:02 a.m.
    Author     : blant
--%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <link rel="shortcut icon" href="../Imagenes/icon.jpg">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Admin/ad_css/ad_index.css">

        <!--FUENTES-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <!--  -->

        <title>Pagina Principal</title>

        <style>
            .chart-container {
                padding: 15px;
                margin: 0 auto;
            }
        </style>
    </head>
    <jsp:useBean id="users" class="com.mycompany.test_1.models.Usuario" scope="session"></jsp:useBean>
    <jsp:useBean id="paciente" class="com.mycompany.test_1.models.Paciente" scope="session"></jsp:useBean>

        <style>
            body {
                margin: 0;
                background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
            }
        </style>
        <body>
            <nav style="background-color: #87AAB5;">
                <div class="sidebar">
                    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion"
                            aria-expanded="false" aria-controls="navegacion">
                        <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
                    </button>
                    <div class="collapse collapse-horizontal" id="navegacion">
                        <div class="enlaces">
                            <a href="${pageContext.request.contextPath}/admin/dashboard">Inicio</a>
                            <a href="${pageContext.request.contextPath}/doctor/list">Doctor</a>
                            <a href="${pageContext.request.contextPath}/recepcionista/list">Recepcionista</a>
                            <a href="${pageContext.request.contextPath}/paciente/list">Paciente</a>
                            <a href="${pageContext.request.contextPath}/usuario/list">Usuario</a>
                            <a href="${pageContext.request.contextPath}/logout">Salir</a>
                        </div>
                    </div>
                </div>
            </nav>
           
        <div class="container my-5">
            <center>
                <h1>Bienvenido(a)</h1>
                <br>
            </center>
            <div class="row">
                <div class="col-md-4">
                    <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-body">
                            <h1>${totalCountRec}</h1>
                            <div class="mt-2 pt-2 border-top">
                                <h3>Recepcionistas</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-body">
                            <h1>${totalCountPac}</h1>
                            <div class="mt-2 pt-2 border-top">
                                <h3>Pacientes</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="toast fade show ctn" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-body">
                             <h1>${totalCountDoc}</h1>
                            <div class="mt-2 pt-2 border-top">
                                <h3>Doctores</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row chart-container">
                <div class="col-md-4">
                    <canvas id="lineChart" width="400" height="400"></canvas>
                </div>
                <div class="col-md-4">
                    <canvas id="barChart" width="400" height="400"></canvas>
                </div>
                <div class="col-md-4">
                    <canvas id="pieChart" width="400" height="400"></canvas>
                </div>
            </div>
        </div>
        <script>
            var ctxLine = document.getElementById('lineChart').getContext('2d');
            var lineChart = new Chart(ctxLine, {
                type: 'line',
                data: {
                    labels: ['Julio', 'Agosto', 'Setiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    datasets: [{
                            label: '# de citas por mes',
                            data: [8, 12, 20, 21, 28, 32],
                            backgroundColor: 'rgba(16, 106, 160, 0.5)',
                            borderColor: '#87AAB5',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            var ctxBar = document.getElementById('barChart').getContext('2d');
            var barChart = new Chart(ctxBar, {
                type: 'bar',
                data: {
                    labels: ['Julio', 'Agosto', 'Setiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    datasets: [{
                            label: '# de pacientes del mes',
                            data: [5, 6, 4, 7, 3, 5],
                            backgroundColor: 'rgba(16, 106, 160, 0.5)',
                            borderColor: 'rgba(16, 106, 160, 1)',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });


            var ctxPie = document.getElementById('pieChart').getContext('2d');
            var pieChart = new Chart(ctxPie, {
                type: 'pie',
                data: {
                    labels: ['Masculino', 'Femenino'],
                    datasets: [{
                            label: '# de Pacientes',
                            data: [${maleCount}, ${femaleCount}],
                            backgroundColor: ['rgba(16, 106, 160, 0.5)', 'rgba(255, 99, 132, 0.5)'],
                            borderColor: ['rgba(16, 106, 160, 1)', 'rgba(255, 45, 90, 1)'],
                            borderWidth: 1
                        }]
                }
            });

        </script>                    
    </body>
</html>