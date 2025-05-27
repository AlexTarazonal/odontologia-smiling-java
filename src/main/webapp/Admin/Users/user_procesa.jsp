<%-- 
    Document   : user_procesa
    Created on : 1 may 2025, 3:46:14 a.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesando</title>
    </head>
    <body>
        <jsp:useBean id="usuario" class="com.mycompany.test_1.models.Usuario" scope="session"></jsp:useBean>
        <jsp:scriptlet>
            String accion = request.getParameter("accion");
            String id = request.getParameter("usr");
            String psw = request.getParameter("psw");
            String nom = request.getParameter("nom");
            String tpo=request.getParameter("tpo");
            if (accion.equals("nuevo")) {
                usuario.agregar(id, psw, nom,tpo);
                response.sendRedirect("../listado.jsp");
            } else if (accion.equals("editar")) {
                usuario.actualizar(id, psw, nom,tpo);
                response.sendRedirect("../listado.jsp");
            } else if (accion.equals("eliminar")) {
                usuario.eliminar(id);
                response.sendRedirect("../listado.jsp");
            
            }
            
        </jsp:scriptlet>
        
        
        
    </body>
</html>
