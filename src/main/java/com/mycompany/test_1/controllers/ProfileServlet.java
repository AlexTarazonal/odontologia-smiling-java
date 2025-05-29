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
    private final UsuarioDAO dao = new UsuarioDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        Usuario sessionUser = (Usuario) session.getAttribute("user");

        // Carga todos los datos por ID (no validando contraseña)
        Usuario usuario;
        try {
            usuario = dao.porId(sessionUser.getId());
        } catch (Exception e) {
            throw new ServletException("Error al recargar perfil", e);
        }
        if (usuario == null) {
            session.invalidate();
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        req.setAttribute("usuario", usuario);
        req.getRequestDispatcher("/Usuario/us_perfil1.jsp")
           .forward(req, resp);
    }

    // … tu doPost …
}