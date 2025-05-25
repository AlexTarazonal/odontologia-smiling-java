<%-- 
    Document   : us_index
    Created on : 2 may 2025, 11:03:15 p.m.
    Author     : blant
--%>

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
    <link rel="shortcut icon" href="../Imagenes/icon.jpg">
    <link rel="stylesheet" href="us_css/us_index.css">
    <style>
        /* Estilo para los comentarios de Facebook */
        .fb-comments {
            margin-top: 20px;
            /* Espacio superior */
            padding: 20px;
            /* Espaciado interior */
            border-top: 1px solid #ccc;
            /* Borde superior */
        }
    </style>
    <!--FUENTES-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->
    <title>Pagina Principal</title>
</head>
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
                <div class="enlaces" style="width: 250px;">
                    <a href="us_index.jsp">Inicio</a>
                    <a href="us_perfil1.jsp">Mi Perfil</a>
                    <a href="us_citas.jsp">Citas</a>
                    <a href="us_recetas.jsp">Recetas</a>
                    <!--<a href="usu_reservarCita.html">Reservar Cita</a>-->
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container">
        <center>
            <h2 class="section-title-layout flex-fill benefit-heading">
                Bienvenido
            </h2>
            <br>



        </center>
        <center>
            <div class="" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../Imagenes/iconL.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Smiling te recuerda</h5>
                            <br>
                            <h7 class="section-title-layout flex-fill benefit-heading">
                                Para tener tus dientes sanos, debes cepillarlos al menos tres veces
                                al día y durante tres minutos.

                            </h7>
                        </div>
                    </div>
                </div>
            </div>
        </center>
        <br>
        <br>
        <center>

            <h2 class="section-title-layout flex-fill benefit-heading fs-1">
                Beneficios
            </h2>
        </center>
        <br>
        <div class="arrows-enabled flex-shrink-0 hidden-md-down">
        </div>
        </button>
        <div class="card-group">
            <div class="card">
                <img src="../Imagenes/cepillado.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Consulta inicial Gratuita</h5>

                </div>
            </div>
            <div class="card">
                <img src="../Imagenes/hilodental.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Emergencias Dentales</h5>
                </div>
            </div>
            <div class="card">
                <img src="../Imagenes/Sonrisa.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Financiamiento Flexible</h5>
                </div>
            </div>
        </div>


</body>

</html>