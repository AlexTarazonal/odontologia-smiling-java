/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
/**
 *
 * @author blant
 */
@WebServlet(name = "UsuarioEditar", urlPatterns = {"/usuario/editar"})
public class UsuarioEditarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            UsuarioDAO dao = new UsuarioDAOImpl();
            try {
                // Buscar el usuario para mostrarlo en el formulario
                List<Usuario> lista = dao.listar();
                Usuario usuarioEditar = null;
                for (Usuario u : lista) {
                    if (u.getId().equals(id)) {
                        usuarioEditar = u;
                        break;
                    }
                }

                if (usuarioEditar != null) {
                    req.setAttribute("usuario", usuarioEditar);
                    // Redirigir a JSP de editar
                    req.getRequestDispatcher("/Admin/Users/user_editar.jsp").forward(req, resp);
                    return;
                } else {
                    // Si no existe, redirigir a lista
                    resp.sendRedirect(req.getContextPath() + "/usuario/list");
                    return;
                }
            } catch (ClassNotFoundException | SQLException e) {
                throw new ServletException("Error al buscar usuario para editar", e);
            }
        } else {
            resp.sendRedirect(req.getContextPath() + "/usuario/list");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Recibir datos editados
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String nombre = req.getParameter("nombre");
        String tipo = req.getParameter("tipo");

        Usuario u = new Usuario();
        u.setId(id);
        u.setPassword(password);
        u.setNombre(nombre);
        u.setTipo(tipo);

        UsuarioDAO dao = new UsuarioDAOImpl();

        try {
            dao.actualizarUser(u);
            // Redirigir a lista después de actualizar
            resp.sendRedirect(req.getContextPath() + "/usuario/list");
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error al actualizar usuario", e);
        }
    }
}
