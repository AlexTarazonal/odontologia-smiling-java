<%-- 
    Document   : listado
    Created on : 26 abr. 2025, 5:16:08 p. m.
    Author     : Estudiante
--%>

<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.LinkedList, pe.edu.seg.Usuario" %>
<!DOCTYPE html>
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
  <link rel="stylesheet" href="ad_css/ad_empleados.css">
  <link rel="stylesheet" href="ad_css/ad_index.css">

      <!--FUENTES-->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--  -->
  <title>Usuarios</title>
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
    <jsp:useBean id="users" class="pe.edu.seg.Usuario" scope="session"></jsp:useBean>
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
                       <h1>Lista de Usuarios</h1>
                       <br>
                    </center>
                    <div class="position-absolute top-1 end-0">
                        <form class="d-flex " role="search">
                          <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Buscar">
                          <button class="btn btn-outline-secondary" type="submit">Buscar</button>
                        </form>
                    </div>
                    <a href="Users/user_agregar.jsp" class="btn btn-primary px-5 rounded-5">Registrar usuario</a>
                    <br>
                    <table class="table table-light table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Password</th>                    
                                <th>Nombre</th>
                                <th>Rol</th>
                                <th>Editar</th>                    
                                <th>Eliminar</th>    
                            </tr>
                        </thead>
                        <tbody>

                        <%
                            LinkedList<Usuario> lista = new LinkedList<>();
                            lista = users.muestraUsuarios();
                            for (Usuario u : lista) {
                        %>                
                        <tr>
                            <td><%=u.getId()%></td>
                            <td><%=u.getPassword()%></td>
                            <td><%=u.getNombre()%></td>
                            <td><%=u.getTipo()%></<td>
                            <td><a href="Users/user_editar.jsp?usr=<%=u.getId()%>"  class="btn btn-warning"> 
                                    <i class="fa-solid fa-pen-to-square" style="color:#000000;"aria-hidden="true"<!-- < -->
                                </a></td>
                            <td><a href="Users/user_eliminar.jsp?usr=<%=u.getId()%>" class="btn btn-danger">
                                    <i class="fa-solid fa-trash" style="color:#000000;"aria-hidden="true"<!-- < -->
                                </a></td>
                        </tr>
                        <%
                            }
                        %>


                        </tbody>
                    </table>  

                </div>
            </div>
            
        </body>
</html>
