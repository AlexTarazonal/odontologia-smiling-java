<%-- 
    Document   : us_recetas
    Created on : 3 may 2025, 3:48:48 p.m.
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
    <!--FUENTES-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->
    <title>Recetas</title>
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
                    <a href="us_perfil.jsp">Mi Perfil</a>
                    <a href="us_citas.jsp">Citas</a>
                    <a href="us_recetas.jsp">Recetas</a>
                </div>
                <div class="enlaces">
                    <a href="../login.jsp">Salir</a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <h1>Recetas</h1>
        <div class="table table-light table-striped table-hover">
            <table class="table" id="recetasTable">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Paciente</th>
                        <th scope="col">Especialidad</th>
                        <th scope="col">Doctor</th>
                        <th scope="col">Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Filas dinámicas cargadas aquí -->
                </tbody>
            </table>
        </div>

        <!-- Modal para mostrar receta -->
        <div class="modal fade" id="recetaModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
            aria-labelledby="recetaModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="recetaModalLabel">Receta</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="recetaBody">
                        <!-- La receta se cargará aquí -->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', loadRecetas);

        function loadRecetas() {
            const recetas = JSON.parse(localStorage.getItem('recetas')) || [];
            const recetasTable = document.querySelector('#recetasTable tbody');
            recetasTable.innerHTML = '';

            if (recetas.length === 0) {
                recetasTable.innerHTML = `
                    <tr>
                        <td colspan="6" class="text-center">No hay recetas disponibles.</td>
                    </tr>`;
                return;
            }

            recetas.forEach((receta, index) => {
                const row = `
                    <tr>
                        <th scope="row">${index + 1}</th>
                        <td>${receta.fecha || 'No disponible'}</td>
                        <td>${receta.nombre || 'No disponible'}</td>
                        <td>${receta.especialidad || 'No especificada'}</td>
                        <td>${receta.doctor || 'No especificado'}</td>
                        <td>
                            <button type="button" class="btn" onclick="verReceta(${index})">
                                <i class="fa-solid fa-eye" style="color: #000000;"></i>
                            </button>
                        </td>
                    </tr>`;
                recetasTable.insertAdjacentHTML('beforeend', row);
            });
        }

        function verReceta(index) {
            const recetas = JSON.parse(localStorage.getItem('recetas')) || [];
            const receta = recetas[index];

            if (!receta) {
                alert('No se encontró la receta seleccionada.');
                return;
            }

            const recetaBody = document.getElementById('recetaBody');
            const recetaItems = receta.receta.split(/\d+\.\s/).filter(item => item.trim() !== "");

            recetaBody.innerHTML = `
        <p><strong>Receta para:</strong> ${receta.nombre}</p>
        <p><strong>Fecha:</strong> ${receta.fecha}</p>
        <p><strong>Doctor:</strong> ${receta.doctor}</p>
        <hr>
        <ul>
        </ul>;;

            const modal = new bootstrap.Modal(document.getElementById('recetaModal'));
            modal.show();
        }

    </script>
</body>

</html>