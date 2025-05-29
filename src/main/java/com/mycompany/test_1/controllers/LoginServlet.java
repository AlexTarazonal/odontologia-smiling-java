package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.dao.impl.UsuarioDAOImpl;
import com.mycompany.test_1.models.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
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
        String id   = request.getParameter("email");
        String pwd  = request.getParameter("password");

        // 2) Validar usando la capa DAO
        UsuarioDAO dao = new UsuarioDAOImpl();
        Usuario user;
        try {
            user = dao.authenticate(id, pwd);
        } catch (Exception e) {
            throw new ServletException("Error al autenticar usuario", e);
        }

        // 3) Si la autenticación fue exitosa...
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // 4) Redirigir según rol
            String role = user.getTipo().toLowerCase();
            switch (role) {
                case "administrador":
                    response.sendRedirect(request.getContextPath() + "/admin/dashboard");
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
                    response.sendRedirect(request.getContextPath() + "/login");
            }
        } else {
            // 5) Falló autenticar: volver al login con mensaje
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
