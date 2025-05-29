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
@WebServlet(name = "RecepcionistaEditar", urlPatterns = {"/recepcionista/editar"})
public class RecepcionistaEditarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            RecepcionistaDAO dao = new RecepcionistaDAOImpl();
            try {
                Recepcionista recepcionista = dao.porId(id);
                if (recepcionista != null) {
                    req.setAttribute("recepcionista", recepcionista);
                    req.getRequestDispatcher("/Admin/Recepcionista/rec_editar.jsp").forward(req, resp);
                    return;
                }
            } catch (Exception e) {
                throw new ServletException("Error al obtener recepcionista", e);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/recepcionista/list");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String sexo = req.getParameter("sexo");
        String telefono = req.getParameter("telefono");
        String correo = req.getParameter("correo");
        

        Recepcionista recepcionista = new Recepcionista();
        recepcionista.setId(id);
        recepcionista.setNombre(nombre);
        recepcionista.setSexo(sexo);
        recepcionista.setTelefono(telefono);
        recepcionista.setCorreo(correo);
       

        RecepcionistaDAO dao = new RecepcionistaDAOImpl();

        try {
            dao.actualizar(recepcionista);
            resp.sendRedirect(req.getContextPath() + "/recepcionista/list");
        } catch (Exception e) {
            throw new ServletException("Error al actualizar recepcionista", e);
        }
    }
}
