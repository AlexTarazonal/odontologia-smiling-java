<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>403 – Acceso denegado</title>
  <!-- Opcional: incluye tu CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container py-5">
  <div class="text-center">
    <h1 class="display-4 text-danger">403</h1>
    <h2>Acceso denegado</h2>
    <p>No tienes permiso para acceder a esta página.</p>
    <a href="${pageContext.request.contextPath}/login.jsp" class="btn btn-primary mt-3">
      Volver al inicio de sesión
    </a>
  </div>
</body>
</html>
