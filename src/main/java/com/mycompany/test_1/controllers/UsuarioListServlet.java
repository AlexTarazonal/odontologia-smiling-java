package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.dao.impl.UsuarioDAOImpl;
import com.mycompany.test_1.models.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.List;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UsuarioList", urlPatterns = {"/usuario/list"})
public class UsuarioListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            UsuarioDAO dao = new UsuarioDAOImpl();
            List<Usuario> lista = dao.listar();
            req.setAttribute("usuarios", lista);
            req.getRequestDispatcher("/listado.jsp")
                    .forward(req, resp);
        } catch (ClassNotFoundException | SQLException | IOException ex) {
            throw new ServletException("Error de acceso a datos", ex);
        }
        // IOException y ServletException que lancen forward() o getRequestDispatcher()
        // salen por throws de doGet()
    }
}
