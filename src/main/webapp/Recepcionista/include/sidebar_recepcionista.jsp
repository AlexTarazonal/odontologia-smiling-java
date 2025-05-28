<%-- src/main/webapp/Recepcionista/include/sidebar_recepcionista.jsp --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/rece_css/recepcionista.css">
<script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>

<nav style="background-color: #87AAB5; padding: 1rem;">
  <div class="sidebar">
    <button class="btn" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navegacion"
            aria-expanded="false"
            aria-controls="navegacion">
      <i class="fa-solid fa-bars text-white"></i>
    </button>
    <div class="collapse show collapse-horizontal" id="navegacion">
      <div class="enlaces d-flex flex-column">
        <a href="${pageContext.request.contextPath}/Recepcionista/rece_index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/Recepcionista/rece_solicitudes.jsp">Solicitudes de Citas</a>
        <a href="${pageContext.request.contextPath}/Recepcionista/rece_horarios.jsp">Horario</a>
        <a href="${pageContext.request.contextPath}/Recepcionista/rece_pacientes.jsp">Pacientes</a>
      </div>
      <div class="enlaces mt-3">
        <a href="${pageContext.request.contextPath}/logout">Salir</a>
      </div>
    </div>
  </div>
</nav>
