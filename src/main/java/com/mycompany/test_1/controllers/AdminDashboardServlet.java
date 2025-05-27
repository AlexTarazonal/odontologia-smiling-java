package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.dao.impl.UsuarioDAOImpl;
import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name="AdminDashboard", urlPatterns={"/admin/dashboard"})
public class AdminDashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            UsuarioDAO udao = new UsuarioDAOImpl();
            // Cuenta doctores, recepcionistas, pacientes, admins
            int totalDoctores     = udao.countByRole("Doctor");
            int totalPacientes    = udao.countByRole("Paciente");
            int totalRecepcionistas = udao.countByRole("Recepcionista");
            int totalAdmins       = udao.countByRole("Administrador");

            PacienteDAO pdao = new PacienteDAOImpl();
            // Cuenta por sexo
            int maleCount   = pdao.countByGender("Masculino");
            int femaleCount = pdao.countByGender("Femenino");

            req.setAttribute("totalDoctores", totalDoctores);
            req.setAttribute("totalPacientes", totalPacientes);
            req.setAttribute("totalRecepcionistas", totalRecepcionistas);
            req.setAttribute("totalAdmins", totalAdmins);
            req.setAttribute("maleCount", maleCount);
            req.setAttribute("femaleCount", femaleCount);

            req.getRequestDispatcher("/Admin/ad_index.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error cargando dashboard", e);
        }
    }
}
