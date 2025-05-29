<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/Imagenes/icon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Usuario/us_css/us_index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Usuario/us_css/us_citas.css">
    <title>Recetas</title>
</head>
<style>
    body { margin: 0; background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5); }
</style>
<body>
    <!-- Navegación -->
    <nav style="background-color: #87AAB5;">
        <div class="sidebar">
            <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion"
                    aria-expanded="false" aria-controls="navegacion">
                <i class="fa-solid fa-bars" style="color: #ffffff"></i>
            </button>
            <div class="collapse collapse-horizontal" id="navegacion">
                <div class="enlaces" style="width: 250px;">
                    <a href="${pageContext.request.contextPath}/Usuario/us_index.jsp">Inicio</a>
                    <a href="${pageContext.request.contextPath}/user/profile">Mi Perfil</a>
                    <a href="${pageContext.request.contextPath}/user/citas">Citas</a>
                    <a href="${pageContext.request.contextPath}/user/recetas">Recetas</a>
                </div>
                <div class="enlaces">
                    <a href="${pageContext.request.contextPath}/login.jsp">Salir</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Contenido -->
    <div class="container-fluid py-5">
        <h1 class="mb-4">Recetas</h1>
        <div class="table-responsive">
            <table class="table table-light table-striped table-hover" id="recetasTable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Fecha</th>
                        <th>Paciente</th>
                        <th>Doctor</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="rec" items="${recetas}" varStatus="st">
                        <tr>
                            <td>${st.index + 1}</td>
                            <td>${rec.fecha}</td>
                            <td>${rec.pacienteNombre}</td>
                            <td>${rec.doctorNombre}</td>
                            <td>
                                <button type="button" class="btn btn-info btn-sm"
                                        data-bs-toggle="modal" data-bs-target="#verRecetaModal"
                                        data-fecha="${rec.fecha}"
                                        data-paciente="${rec.pacienteNombre}"
                                        data-doctor="${rec.doctorNombre}"
                                        data-detalle="${fn:escapeXml(rec.detalle)}">
                                    <i class="fa-solid fa-eye"></i>
                                </button>
                                <a href="${pageContext.request.contextPath}/user/recetas/delete/${rec.id}" class="btn btn-danger btn-sm">
                                    <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty recetas}">
                        <tr>
                            <td colspan="5" class="text-center">No hay recetas disponibles.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
        <button class="btn btn-primary mt-3" data-bs-toggle="modal" data-bs-target="#agendarRecetaModal">
            Nueva Receta
        </button>
    </div>

    <!-- Modal Agendar Receta -->
    <div class="modal fade" id="agendarRecetaModal" tabindex="-1" aria-labelledby="agendarRecetaLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="agendarRecetaLabel">Nueva Receta</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="${pageContext.request.contextPath}/user/recetas" method="post" class="row g-3">
              <div class="col-md-6">
                <label for="doctorIdRec" class="form-label">Doctor</label>
                <select id="doctorIdRec" name="doctorId" class="form-select" required>
                  <c:forEach var="doc" items="${doctores}">
                    <option value="${doc.id}">${doc.nombre} - ${doc.especialidad}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="col-md-6">
                <label for="fechaRec" class="form-label">Fecha</label>
                <input type="date" id="fechaRec" name="fecha" class="form-control" required />
              </div>
              <div class="col-12">
                <label for="detalle" class="form-label">Detalle de Receta</label>
                <textarea id="detalle" name="detalle" class="form-control" rows="4" required></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" onclick="document.querySelector('#agendarRecetaModal form').submit()">Guardar Receta</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Ver Receta -->
    <div class="modal fade" id="verRecetaModal" tabindex="-1" aria-labelledby="verRecetaLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="verRecetaLabel">Detalle de Receta</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <p><strong>Paciente:</strong> <span id="verPaciente"></span></p>
            <p><strong>Doctor:</strong> <span id="verDoctor"></span></p>
            <p><strong>Fecha:</strong> <span id="verFecha"></span></p>
            <hr />
            <div id="verDetalle"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>

    <script>
      const verRecetaModal = document.getElementById('verRecetaModal');
      verRecetaModal.addEventListener('show.bs.modal', event => {
        const btn = event.relatedTarget;
        document.getElementById('verPaciente').textContent = btn.getAttribute('data-paciente');
        document.getElementById('verDoctor').textContent  = btn.getAttribute('data-doctor');
        document.getElementById('verFecha').textContent   = btn.getAttribute('data-fecha');
        document.getElementById('verDetalle').innerHTML   = btn.getAttribute('data-detalle').replace(/\n/g,'<br>');
      });
    </script>
</body>
</html>
