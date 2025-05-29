/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_1.controllers;
import com.mycompany.test_1.dao.RecepcionistaDAO;
import com.mycompany.test_1.dao.impl.RecepcionistaDAOImpl;
import com.mycompany.test_1.models.Recepcionista;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 *
 * @author blant
 */
@WebServlet(name = "RecepcionistaEliminar", urlPatterns = {"/recepcionista/eliminar"})
public class RecepcionistaEliminarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            RecepcionistaDAO dao = new RecepcionistaDAOImpl();
            try {
                dao.eliminar(id);
            } catch (Exception e) {
                throw new ServletException("Error al eliminar recepcionista", e);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/recepcionista/list");
    }
}
