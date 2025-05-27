package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.dao.impl.DoctorDAOImpl;
import com.mycompany.test_1.models.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name="DoctorList", urlPatterns={"/doctor/list"})
public class DoctorListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            DoctorDAO dao = new DoctorDAOImpl();
            List<Doctor> lista = dao.listar();
            req.setAttribute("doctores", lista);
            req.getRequestDispatcher("/doc_listado.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error al listar doctores", e);
        }
    }
}
