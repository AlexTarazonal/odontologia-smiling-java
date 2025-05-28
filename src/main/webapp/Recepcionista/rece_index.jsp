

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
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
    
    <title>Bienvenida - Smiling</title>

    <!--FUENTES-->
    <link rel="shortcut icon" href="../Imagenes/icon.jpg">
    <link rel="stylesheet" href="../Doctor/doc_css/doc_index.css">
    <link rel="stylesheet" href="rece_css/recepcionista.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->

</head>

<body>
   <%@ include file="/Recepcionista/include/sidebar_recepcionista.jsp" %>
  
<!--FIN DE NAVEGACION-->

  <div class="logo">
    <img src="../Imagenes/icon.jpg" alt="Logo" class="rounded-circle" width="70">
    <span style="display: inline-block; vertical-align: middle;" class="fs-3">Smiling</span>
  </div>
  <div class="container mt-5">
    <div class="card shadow-lg">
      <div class="card-body">
        <h1 class="text-center text-primary mb-4 fs-1">Bienvenido(a) <span class="font-weight-bold"></span> a Smiling</h1>
        <hr>
        <h3 class="text-center text-secondary mb-3 fs-2">Nuestros Servicios</h3>
        <div class="row text-center">
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Odontología general</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Odontopediatría</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Estética Dental</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Rehabilitación oral</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Endodoncia</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Implantología</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Periodoncia</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Ortodoncia</h5>
          </div>
          <div class="col-md-4 mb-3">
            <h5 class="service-title">Cirugía Maxilofacial</h5>
          </div>
        </div>
        <h3 class="text-center text-secondary mb-3 fs-2">Horarios de Atención</h3>
        <p class="text-center mb-4">
          Lunes a Viernes: 9:00 AM - 6:00 PM<br>
          Sábados: 9:00 AM - 2:00 PM
        </p>
        <h3 class="text-center text-secondary mb-3 fs-2">Contacto</h3>
        <p class="text-center mb-4">
          Llámanos al <span class="font-weight-bold">921564897</span><br>
          Envíanos un correo a <span class="font-weight-bold">odonto.smiling@gmail.com</span>
        </p>
        <hr>
        <h3 class="text-center text-secondary mb-3">Actividades Diarias de una Recepcionista</h3>
        <form>
          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Atender llamadas telefónicas y responder consultas</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity1" id="activity1done" value="done">
                  <label class="form-check-label" for="activity1done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity1" id="activity1notdone" value="notdone">
                  <label class="form-check-label" for="activity1notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Agendar citas y gestionar el calendario de los odontólogos</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity2" id="activity2done" value="done">
                  <label class="form-check-label" for="activity2done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity2" id="activity2notdone" value="notdone">
                  <label class="form-check-label" for="activity2notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Recibir a los pacientes y registrarlos en el sistema</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity3" id="activity3done" value="done">
                  <label class="form-check-label" for="activity3done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity3" id="activity3notdone" value="notdone">
                  <label class="form-check-label" for="activity3notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Manejar la correspondencia y los correos electrónicos</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity4" id="activity4done" value="done">
                  <label class="form-check-label" for="activity4done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity4" id="activity4notdone" value="notdone">
                  <label class="form-check-label" for="activity4notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Organizar y mantener actualizados los expedientes de los pacientes</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity5" id="activity5done" value="done">
                  <label class="form-check-label" for="activity5done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity5" id="activity5notdone" value="notdone">
                  <label class="form-check-label" for="activity5notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Realizar recordatorios de citas a los pacientes</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity6" id="activity6done" value="done">
                  <label class="form-check-label" for="activity6done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity6" id="activity6notdone" value="notdone">
                  <label class="form-check-label" for="activity6notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Coordinar con el personal de limpieza y mantenimiento del centro</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity7" id="activity7done" value="done">
                  <label class="form-check-label" for="activity7done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity7" id="activity7notdone" value="notdone">
                  <label class="form-check-label" for="activity7notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Gestionar pagos y facturación</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity8" id="activity8done" value="done">
                  <label class="form-check-label" for="activity8done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity8" id="activity8notdone" value="notdone">
                  <label class="form-check-label" for="activity8notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Ofrecer información sobre los servicios y promociones del centro</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity9" id="activity9done" value="done">
                  <label class="form-check-label" for="activity9done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity9" id="activity9notdone" value="notdone">
                  <label class="form-check-label" for="activity9notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">
              <span>Asegurarse de que la sala de espera esté ordenada y cómoda para los pacientes</span>
              <div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity10" id="activity10done" value="done">
                  <label class="form-check-label" for="activity10done"><span class="badge badge-success">&#10003;</span></label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="activity10" id="activity10notdone" value="notdone">
                  <label class="form-check-label" for="activity10notdone"><span class="badge badge-danger">&#10007;</span></label>
                </div>
              </div>
            </li>
          </ul>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
