/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.dao.impl.UsuarioDAOImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;
/**
 *
 * @author blant
 */
@WebServlet(name = "UsuarioEliminar", urlPatterns = {"/usuario/eliminar"})
public class UsuarioEliminarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String id = req.getParameter("id");

        if (id != null && !id.isEmpty()) {
            UsuarioDAO dao = new UsuarioDAOImpl();
            try {
                dao.eliminarUser(id);
            } catch (ClassNotFoundException | SQLException e) {
                throw new ServletException("Error al eliminar usuario", e);
            }
        }
        // Redirigir a la lista después de eliminar
        resp.sendRedirect(req.getContextPath() + "/usuario/list");
    }
}


    
