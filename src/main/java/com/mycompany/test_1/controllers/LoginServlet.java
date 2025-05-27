package com.mycompany.test_1.controllers;

import pe.edu.seg.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Mostrar la página de login
        request.getRequestDispatcher("/login.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 1) Leer los parámetros del formulario
        String email    = request.getParameter("email");
        String password = request.getParameter("password");

        // 2) Validar contra la base de datos usando tu bean Usuario
        Usuario usuario = new Usuario();
        usuario.setId(email);
        usuario.setPassword(password);

        int log = 0;
        try {
            log = usuario.getLogueado();  // ejecuta el SELECT y rellena tipo
        } catch (ClassNotFoundException e) {
            throw new ServletException("Error al cargar el driver de BD", e);
        }

        if (log != 0) {
            // 3) Guardar el usuario autenticado en la sesión
            HttpSession session = request.getSession();
            session.setAttribute("user", usuario);

            // 4) Redirigir según el rol
            String tipo = usuario.getTipo().toLowerCase();
            switch (tipo) {
                case "administrador":
                    response.sendRedirect(request.getContextPath() + "/Admin/ad_index.jsp");
                    break;
                case "doctor":
                    response.sendRedirect(request.getContextPath() + "/Doctor/doc_index.jsp");
                    break;
                case "paciente":
                    response.sendRedirect(request.getContextPath() + "/Usuario/us_index.jsp");
                    break;
                case "recepcionista":
                    response.sendRedirect(request.getContextPath() + "/Recepcionista/rece_index.jsp");
                    break;
                default:
                    // Rol desconocido: volver al login
                    response.sendRedirect(request.getContextPath() + "/login");
            }
        } else {
            // Login fallido: volver al login con mensaje de error
            request.setAttribute("error", "Credenciales inválidas");
            request.getRequestDispatcher("/login.jsp")
                   .forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet encargado de la autenticación y redireccionamiento según rol";
    }
}
