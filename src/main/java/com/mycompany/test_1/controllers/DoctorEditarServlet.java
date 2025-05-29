/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.dao.impl.DoctorDAOImpl;
import com.mycompany.test_1.models.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;

/**
 *
 * @author blant
 */
@WebServlet(name = "DoctorEditar", urlPatterns = {"/doctor/editar"})
public class DoctorEditarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            DoctorDAO dao = new DoctorDAOImpl();
            try {
                Doctor doctor = dao.porId(id);
                if (doctor != null) {
                    req.setAttribute("doctor", doctor);
                    req.getRequestDispatcher("/Admin/Doctor/doc_editar.jsp").forward(req, resp);
                    return;
                }
            } catch (Exception e) {
                throw new ServletException("Error al obtener doctor", e);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/doctor/list");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String sexo = req.getParameter("sexo");
        String telefono = req.getParameter("telefono");
        String correo = req.getParameter("correo");
        String especialidad = req.getParameter("especialidad");

        Doctor doctor = new Doctor();
        doctor.setId(id);
        doctor.setNombre(nombre);
        doctor.setSexo(sexo);
        doctor.setTelefono(telefono);
        doctor.setCorreo(correo);
        doctor.setEspecialidad(especialidad);

        DoctorDAO dao = new DoctorDAOImpl();

        try {
            dao.actualizar(doctor);
            resp.sendRedirect(req.getContextPath() + "/doctor/list");
        } catch (Exception e) {
            throw new ServletException("Error al actualizar doctor", e);
        }
    }
}
