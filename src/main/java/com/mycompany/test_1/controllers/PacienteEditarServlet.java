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
@WebServlet(name = "PacienteEditar", urlPatterns = {"/paciente/editar"})
public class PacienteEditarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null && !id.isEmpty()) {
            PacienteDAO dao = new PacienteDAOImpl();
            try {
                Paciente paciente = dao.porId(id);
                if (paciente != null) {
                    req.setAttribute("paciente", paciente);
                    req.getRequestDispatcher("/Admin/Paciente/pac_editar.jsp").forward(req, resp);
                    return;
                }
            } catch (Exception e) {
                throw new ServletException("Error al obtener doctor", e);
            }
        }
        resp.sendRedirect(req.getContextPath() + "/paciente/list");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String nombre = req.getParameter("nombre");
        String sexo = req.getParameter("sexo");
        String telefono = req.getParameter("telefono");
        String correo = req.getParameter("correo");
        String estatus = req.getParameter("estatus");

        Paciente paciente = new Paciente();
        paciente.setId(id);
        paciente.setNombre(nombre);
        paciente.setSexo(sexo);
        paciente.setTelefono(telefono);
        paciente.setCorreo(correo);
        paciente.setEstatus(estatus);

        PacienteDAO dao = new PacienteDAOImpl();

        try {
            dao.actualizar(paciente);
            resp.sendRedirect(req.getContextPath() + "/paciente/list");
        } catch (Exception e) {
            throw new ServletException("Error al actualizar doctor", e);
        }
    }
}
