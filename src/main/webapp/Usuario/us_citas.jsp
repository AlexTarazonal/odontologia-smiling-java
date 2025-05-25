<%-- 
    Document   : us_citas
    Created on : 3 may 2025, 3:43:59 p.m.
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
    <link rel="stylesheet" href="us_css/us_citas.css">
    <title>Citas</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    
</head>
<style>
        body {
            margin: 0;
            background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
        }
    </style>
<body>
    <!-- Navegación -->
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
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Contenido -->
    <div class="container-fluid">
        <h1> Lista de Citas <b></b> </h1>
        <div class="table table-light table-striped table-hover">
            <table class="table" id="citasTable">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">DNI</th>
                        <th scope="col">Especialidad</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Hora</th>
                        <th scope="col">Doctor</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Las filas nuevas se añadirán aquí -->
                </tbody>
            </table>
        </div>

        <!-- Botón para abrir el modal -->
        <div class="position-absolute bottom-0 end-0 but">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Agendar">
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
                        <form id="citaForm" class="row g-3">
                            <div class="col-md-6">
                                <label for="dni" class="form-label">DNI</label>
                                <input type="text" class="form-control" id="dni" disabled>
                            </div>
                            <div class="col-md-6">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" disabled>
                            </div>
                            <div class="col-md-6">
                                <label for="especialidad" class="form-label">Especialidad</label>
                                <select id="especialidad" class="form-select" required>
                                    <option value="Odontología General">Odontología General</option>
                                    <option value="Ortodoncia">Ortodoncia</option>
                                    <option value="Endodoncia">Endodoncia</option>
                                    <option value="Estética Dental">Estética Dental</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="doctor" class="form-label">Doctor</label>
                                <select id="doctor" class="form-select" required>
                                    <option value="Dra. Ana Perez Montero">Dra. Ana Perez Montero</option>
                                    <option value="Dr. Joaquín Sastre">Dr. Joaquín Sastre</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="fecha" class="form-label">Fecha</label>
                                <input type="date" class="form-control" id="fecha" required>
                            </div>
                            <div class="col-md-6">
                                <label for="hora" class="form-label">Hora</label>
                                <select id="hora" class="form-select" required>
                                    <option value="" selected disabled>Seleccione un horario</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary" onclick="agregarCita()">Guardar Cita</button>
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
                        <p><strong>Nombre:</strong> <span id="detalleNombre"></span></p>
                        <p><strong>DNI:</strong> <span id="detalleDni"></span></p>
                        <p><strong>Especialidad:</strong> <span id="detalleEspecialidad"></span></p>
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
        <!-- Modal Confirmar Eliminación -->
        <div class="modal fade" id="eliminarCitaModal" tabindex="-1" aria-labelledby="eliminarCitaModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="eliminarCitaModalLabel">Confirmar Eliminación</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ¿Estás seguro de que deseas eliminar esta cita?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-danger" onclick="eliminarCita()">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>