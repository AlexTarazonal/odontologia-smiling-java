package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.dao.impl.UsuarioDAOImpl;
import com.mycompany.test_1.models.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="ProfileServlet", urlPatterns={"/user/profile"})
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 1) Obtén el usuario de la sesión
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        Usuario sessionUser = (Usuario) session.getAttribute("user");

        // 2) Recarga sus datos completos desde la BD (por si cambió algo)
        try {
            UsuarioDAO dao = new UsuarioDAOImpl();
            Usuario usuario = dao.authenticate(sessionUser.getId(), sessionUser.getPassword());
            if (usuario == null) {
                // sesión inválida: cierra sesión y redirige a login
                session.invalidate();
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
            // 3) Pasa el bean al request
            req.setAttribute("usuario", usuario);
            // 4) Forward a JSP
            req.getRequestDispatcher("/WEB-INF/views/us_perfil.jsp")
               .forward(req, resp);
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error al cargar perfil", e);
        }
    }
}
