<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="com.mycompany.test_1.models.Doctor" %>
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
        <link rel="stylesheet" href="ad_css/ad_index.css">
        <link rel="stylesheet" href="ad_css/ad_empleados.css">


        <!--FUENTES-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <!--  -->
        <title>Doctores</title>
        <style>
            .modal-label {
                color: grey;
                pointer-events: none;
            }
        </style>
        <script>
            function showMessageAdd() {
                alert("Los datos del empleado fueron registrados");
            }
        </script>
        <style>
            body {
                margin: 0;
                background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
            }
        </style>
        <jsp:useBean id="doctor" class="com.mycompany.test_1.models.Doctor" scope="session"></jsp:useBean>
        <body>
            <nav style="background-color: #87AAB5;">
                <div class="sidebar">
                    <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#navegacion" aria-expanded="false"
                            aria-controls="navegacion">
                        <i class="fa-solid fa-bars" style="color: #ffffff;"></i>
                    </button>
                    <div class="collapse collapse-horizontal" id="navegacion">
                        <div class="enlaces">
                            <a href="ad_index.jsp">Inicio</a>
                            <a href="doc_listado.jsp">Doctor</a>
                            <a href="rec_listado.jsp">Recepcionista</a>
                            <a href="ad_paciente.jsp">Paciente</a>
                            <a href="listado.jsp">Usuario</a>
                            <a href="../login.jsp">Salir</a>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="position-relative">
                    <center>
                        <h1>Lista de Doctores</h1>
                        <br>
                    </center>
                    <div class="position-absolute top-1 end-0">
                        <form class="d-flex " role="search">
                            <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Buscar">
                            <button class="btn btn-outline-secondary" type="submit">Buscar</button>
                        </form>
                    </div>
                    <a href="Doctor/doc_agregar.jsp" class="btn btn-primary px-5 rounded-5">Registrar Doctor</a>
                    <br>
                    <table class="table table-light table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Sexo</th>
                                <th>Teléfono</th>
                                <th>Correo</th>
                                <th>Especialidad</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="d" items="${doctores}">
                        <tr>
                            <td>${d.id}</td>
                            <td>${d.nombre}</td>
                            <td>${d.sexo}</td>
                            <td>${d.telefono}</td>
                            <td>${d.correo}</td>
                            <td>${d.especialidad}</td>
                            <td>
                                <a href="Doctor/doc_editar.jsp?id=${d.id}" class="btn btn-warning">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </a>
                                <a href="Doctor/doc_eliminar.jsp?id=${d.id}" class="btn btn-danger">
                                    <i class="fa-solid fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>