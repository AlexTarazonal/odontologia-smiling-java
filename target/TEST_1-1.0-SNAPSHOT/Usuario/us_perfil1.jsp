<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Mi Perfil</title>
        <!-- tus CSS/JS aquí -->
    </head>
    <body>
        <div class="container my-5 col-md-4">
            <h3>Mi Perfil</h3>
            <form action="${pageContext.request.contextPath}/user/profile" method="post">
                <!-- si vas a permitir actualizar -->
                <input type="hidden" name="accion" value="updateProfile"/>
                <div class="mb-3">
                    <label>Usuario</label>
                    <input type="text" class="form-control" name="usr" 
                           value="${usuario.id}" readonly/>
                </div>
                <div class="mb-3">
                    <label>Contraseña</label>
                    <input type="password" class="form-control" name="password" 
                           value="${usuario.password}" />
                </div>
                <div class="mb-3">
                    <label>Nombre</label>
                    <input type="text" class="form-control" name="nombre" 
                           value="${usuario.nombre}" />
                </div>
                <div class="mb-3">
                    <label>Tipo</label>
                    <input type="text" class="form-control" value="${usuario.tipo}" readonly/>
                </div>
                <a href="${pageContext.request.contextPath}/Usuario/us_index.jsp" class="btn btn-danger">
                    Cancelar
                </a>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
