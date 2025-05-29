<%-- 
    Document   : pac_editar
    Created on : 1 may 2025, 1:24:36 p.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.test_1.models.Paciente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paciente</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
        <link rel="stylesheet" href="../../Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="../../Imagenes/icon.jpg">
        

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
        <jsp:useBean id="paciente" class="com.mycompany.test_1.models.Paciente" scope="session"></jsp:useBean>
        <jsp:setProperty name="paciente" property="id" param="id"></jsp:setProperty>
        
    <center>
        <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form method="post" action="${pageContext.request.contextPath}/paciente/editar">
                    <input type="hidden" name="id" value="${paciente.id}" />

                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" name="nombre" id="nombre" class="form-control" value="${paciente.nombre}" required />
                    </div>

                    <div class="mb-3">
                        <label for="sexo" class="form-label">Sexo</label>
                        <select name="sexo" id="sexo" class="form-control" required>
                            <option value="">Seleccione...</option>
                            <option value="Masculino" ${paciente.sexo == 'M' ? "selected" : ""}>Masculino</option>
                            <option value="Femenino" ${paciente.sexo == 'F' ? "selected" : ""}>Femenino</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input type="text" name="telefono" id="telefono" class="form-control" value="${paciente.telefono}" required />
                    </div>

                    <div class="mb-3">
                        <label for="correo" class="form-label">Correo</label>
                        <input type="email" name="correo" id="correo" class="form-control" value="${paciente.correo}" required />
                    </div>

                    <div class="mb-3">
                        <label for="estatus" class="form-label">Estatus</label>
                        <input type="text" name="estatus" id="estatus" class="form-control" value="${paciente.estatus}" required />
                    </div>

                    <button type="submit" class="btn btn-success">Actualizar</button>
                    <a href="${pageContext.request.contextPath}/paciente/list" class="btn btn-secondary">Cancelar</a>
                </form>
            </div>
        </div>
    </center>
    </body>
</html>

