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

import java.io.IOException;
import java.sql.SQLException;
/**
 *
 * @author blant
 */
@WebServlet(name = "UsuarioAgregar", urlPatterns = {"/usuario/agregar"})
public class UsuarioAgregarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        // Obtener los parámetros del formulario
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String password = req.getParameter("password");
        String tipo = req.getParameter("tipo");

        Usuario u = new Usuario();
        u.setId(id);
        u.setNombre(nombre);
        u.setPassword(password);
        u.setTipo(tipo);

        UsuarioDAO dao = new UsuarioDAOImpl();

        try {
            // Llamar al método que inserta el usuario en la BD
            dao.crearUser(u);

            // Redireccionar a la lista de usuarios (para evitar reenvío)
            resp.sendRedirect(req.getContextPath() + "/usuario/list");
        } catch (ClassNotFoundException | SQLException e) {
            // Si falla la inserción, mostrar mensaje de error o loguear
            throw new ServletException("Error al crear usuario", e);
        }
    }

    // Si quieres que el usuario vea el formulario al hacer GET, puedes agregar:
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/Admin/Users/user_agregar.jsp").forward(req, resp);
    }
}


