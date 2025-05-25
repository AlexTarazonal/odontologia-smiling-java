
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenida</title>
    <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link href="../Estilos/estilosindex.css" rel="stylesheet" />
    <link href="doc_css/doc_index.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="../Imagenes/icon.jpg">
    
    
    <!--FUENTES-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->

</head>
<style>
  body {
      margin: 0;
      height: 100vh; /* Asegura que el degradado cubra toda la pantalla */
      background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
  }
</style>
<body>
    <!--NAVEGACIÓN-->
  <nav style="background-color: #87AAB5;">
    <div class="sidebar">
      <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
        aria-controls="navegacion">
        <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
      </button>
      <div class="collapse collapse-horizontal" id="navegacion">
        <div class="enlaces">
          <a href="doc_index.jsp">Inicio</a>
          <a href="doc_citas.html">Citas</a>
          <a href="doc_diagnostico.html">Diagnostico</a>
          <a href="doc_disponibilidad.html">Disponibilidad</a>
          <a href="../login.jsp">Salir</a>
        </div>
      </div>
    </div>
  </nav>
  <!--FIN DE NAVEGACION-->

    <!--CONTENIDO PRINCIPAL-->
    <div class="container mt-5">
        <div class="row mx-auto">
            
          <h1 class="text-center" style="font-size: 48px;">Bienvenido(a), Doctor(a)</h1>
            <div class="col-md-3">
                <img src="../Imagenes/dent2L.jpg" alt="Bienvenido Doctor" class="img-fluid rounded" style="max-width: 200px;">
                <p class="fs-4 mt-3">
                  Especialista: <br>
                  Ortodoncia y <br>
                  ortopedia maxilofacial
                 </p>
            </div>
            <div class="col-md-8">
                <p class="fs-4">Nos complace tenerlo con nosotros. A continuación, encontrará algunas recomendaciones importantes para su práctica.</p>
                <p class="fs-4">En Smiling Dental, estamos comprometidos con ofrecer la mejor atención dental utilizando tecnología de punta y técnicas 
                  avanzadas. Nuestro equipo de profesionales está altamente capacitado para garantizar la satisfacción y el bienestar de 
                  nuestros pacientes.</p>
                <p class="fs-4" >Ubicados en el corazón de Surco, nuestra clínica es un lugar donde la comodidad del paciente es nuestra prioridad. 
                  Gracias por confiar en nosotros para todas sus necesidades dentales.</p>
            </div>
        </div>
    </div>
    
    
</body>

</html>