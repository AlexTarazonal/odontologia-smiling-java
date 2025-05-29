<%-- 
    Document   : us_perfil
    Created on : 29 may 2025
    Author     : blant
--%>

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

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Usuario/us_css/us_index.css">

    <style>
        /* Estilo para los comentarios de Facebook */
        .fb-comments {
            margin-top: 20px;
            padding: 20px;
            border-top: 1px solid #ccc;
        }
    </style>
    <!-- FUENTES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>Mi Perfil</title>
</head>

<style>
    body {
        margin: 0;
        background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
        font-family: 'Jua', sans-serif;
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

    <!-- Contenido del perfil -->
    <div class="container-fluid py-5">
        <div class="container my-5 col-md-6">
            <h3 class="mb-4">Mi Perfil</h3>
            <form action="${pageContext.request.contextPath}/user/profile" method="post">
                <input type="hidden" name="usr" value="${usuario.id}"/>
                <div class="mb-3">
                    <label class="form-label">Usuario</label>
                    <input type="text" class="form-control" value="${usuario.id}" readonly/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Contraseña</label>
                    <input type="password" class="form-control" name="password"
                           value="${usuario.password}" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre"
                           value="${usuario.nombre}" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Tipo</label>
                    <input type="text" class="form-control" name="tipo"
                           value="${usuario.tipo}" readonly/>
                </div>
                <div class="d-flex justify-content-end">
                    <a href="${pageContext.request.contextPath}/user/index" class="btn btn-danger me-2">
                        Cancelar
                    </a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
