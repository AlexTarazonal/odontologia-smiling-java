<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Lista de Citas</title>
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
        <h1 class="mb-4">Lista de Citas</h1>
        <div class="table-responsive">
            <table class="table table-light table-striped table-hover" id="citasTable">
                <thead class="table-light">
                    <tr>
                        <th>#</th>
                        <th>Paciente</th>
                        <th>Doctor</th>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>Estado</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cita" items="${citas}">
                        <tr>
                            <td>${cita.id}</td>
                            <td>${cita.pacienteId}</td>
                            <td>${cita.doctorId}</td>
                            <td>${cita.fecha}</td>
                            <td>${cita.hora}</td>
                            <td>${cita.estado}</td>
                            <td>
                                <button type="button" class="btn btn-info btn-sm"
                                        data-bs-toggle="modal" data-bs-target="#verCitaModal"
                                        data-paciente="${cita.pacienteId}"
                                        data-doctor="${cita.doctorId}"
                                        data-fecha="${cita.fecha}"
                                        data-hora="${cita.hora}"
                                        data-estado="${cita.estado}">
                                    <i class="fa-solid fa-eye"></i>
                                </button>
                                <a href="${pageContext.request.contextPath}/user/citas/delete/${cita.id}" 
                                   class="btn btn-danger btn-sm">
                                    <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty citas}">
                        <tr>
                            <td colspan="7" class="text-center">No hay citas disponibles.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
        <button class="btn btn-primary mt-3" data-bs-toggle="modal" data-bs-target="#Agendar">
            Reservar Cita
        </button>
    </div>

    <!-- Modal Agendar Cita -->
    <div class="modal fade" id="Agendar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fs-5" id="staticBackdropLabel">Agendar Cita</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="${pageContext.request.contextPath}/user/citas" method="post" class="row g-3">
                        <input type="hidden" name="id" />
                        <div class="col-md-6">
                            <label for="pacienteId" class="form-label">DNI Paciente</label>
                            <input type="text" class="form-control" name="pacienteId" id="pacienteId" required value="${paciente.id}" readonly/>
                        </div>
                        <div class="col-md-6">
                            <label for="doctorId" class="form-label">Doctor</label>
                            <select id="doctorId" name="doctorId" class="form-select" required>
                                <c:forEach var="doc" items="${doctores}">
                                    <option value="${doc.id}">${doc.nombre} - ${doc.especialidad}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="fecha" class="form-label">Fecha</label>
                            <input type="date" class="form-control" name="fecha" id="fecha" required />
                        </div>
                        <div class="col-md-6">
                            <label for="hora" class="form-label">Hora</label>
                            <input type="time" class="form-control" name="hora" id="hora" required />
                        </div>
                        <div class="col-md-12">
                            <label for="estado" class="form-label">Estado</label>
                            <select id="estado" name="estado" class="form-select">
                                <option value="Pendiente">Pendiente</option>
                                <option value="Confirmada">Confirmada</option>
                                <option value="Cancelada">Cancelada</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" onclick="document.querySelector('#Agendar form').submit()">Guardar Cita</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Ver Cita -->
    <div class="modal fade" id="verCitaModal" tabindex="-1" aria-labelledby="verCitaModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="verCitaModalLabel">Detalles de la Cita</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p><strong>Paciente:</strong> <span id="detallePaciente"></span></p>
                    <p><strong>Doctor:</strong> <span id="detalleDoctor"></span></p>
                    <p><strong>Fecha:</strong> <span id="detalleFecha"></span></p>
                    <p><strong>Hora:</strong> <span id="detalleHora"></span></p>
                    <p><strong>Estado:</strong> <span id="detalleEstado"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        const verModal = document.getElementById('verCitaModal');
        verModal.addEventListener('show.bs.modal', event => {
            const btn = event.relatedTarget;
            document.getElementById('detallePaciente').textContent = btn.getAttribute('data-paciente');
            document.getElementById('detalleDoctor').textContent  = btn.getAttribute('data-doctor');
            document.getElementById('detalleFecha').textContent   = btn.getAttribute('data-fecha');
            document.getElementById('detalleHora').textContent    = btn.getAttribute('data-hora');
            document.getElementById('detalleEstado').textContent  = btn.getAttribute('data-estado');
        });
    </script>
</body>
</html>