<%-- 
    Document   : rec_procesa
    Created on : 3 may 2025, 12:26:26 a.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepcionista</title>
    </head>
    <body>
        <jsp:useBean id="recepcionista" class="com.mycompany.test_1.models.Recepcionista" scope="session"></jsp:useBean>
        <jsp:scriptlet>
            String accion = request.getParameter("accion");
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String sexo = request.getParameter("sexo");
            String telefono=request.getParameter("telefono");
            String correo=request.getParameter("correo");
            

            if (accion.equals("nuevo")) {
                recepcionista.agregarRecepcionista(id, nombre,sexo,telefono,correo);
                response.sendRedirect("../rec_listado.jsp");
            } else if (accion.equals("editar")) {
                recepcionista.actualizarRecepcionista(id, nombre,sexo,telefono,correo);
                response.sendRedirect("../rec_listado.jsp");
            } else if (accion.equals("eliminar")) {
                recepcionista.eliminarRecepcionista(id);
                response.sendRedirect("../rec_listado.jsp");
            }
        </jsp:scriptlet>
        
        
        
    </body>
</html>
