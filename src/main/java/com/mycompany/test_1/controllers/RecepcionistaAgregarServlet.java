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
@WebServlet(name = "RecepcionistaAgregar", urlPatterns = {"/recepcionista/agregar"})
public class RecepcionistaAgregarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Admin/Recepcionista/rec_agregar.jsp").forward(req, resp);
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
            dao.crear(recepcionista);
            resp.sendRedirect(req.getContextPath() + "/recepcionista/list");
        } catch (Exception e) {
            throw new ServletException("Error al agregar recepcionista", e);
        }
    }
}