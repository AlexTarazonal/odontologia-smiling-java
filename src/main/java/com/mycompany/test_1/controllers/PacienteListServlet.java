package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;
import com.mycompany.test_1.models.Paciente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name="PacienteList", urlPatterns={"/paciente/list"})
public class PacienteListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            PacienteDAO dao = new PacienteDAOImpl();
            List<Paciente> lista = dao.listar();
            req.setAttribute("pacientes", lista);
            req.getRequestDispatcher("/ad_paciente.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error al listar pacientes", e);
        }
    }
}
