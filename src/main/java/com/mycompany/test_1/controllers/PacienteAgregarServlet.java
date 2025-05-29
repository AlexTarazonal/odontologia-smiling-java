/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_1.controllers;
import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;
import com.mycompany.test_1.models.Paciente;
/**
 *
 * @author blant
 */
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
/**
 *
 * @author blant
 */
@WebServlet(name = "PacienteAgregar", urlPatterns = {"/paciente/agregar"})
public class PacienteAgregarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Admin/Paciente/pac_agregar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String sexo = req.getParameter("sexo");
        String telefono = req.getParameter("telefono");
        String correo = req.getParameter("correo");
        String estatus = req.getParameter("estatus");

        Paciente doctor = new Paciente();
        doctor.setId(id);
        doctor.setNombre(nombre);
        doctor.setSexo(sexo);
        doctor.setTelefono(telefono);
        doctor.setCorreo(correo);
        doctor.setEstatus(estatus);

        PacienteDAO dao = new PacienteDAOImpl();

        try {
            dao.crear(doctor);
            resp.sendRedirect(req.getContextPath() + "/paciente/list");
        } catch (Exception e) {
            throw new ServletException("Error al agregar doctor", e);
        }
    }
}
