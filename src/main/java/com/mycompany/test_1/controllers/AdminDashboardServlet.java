package com.mycompany.test_1.controllers;


import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;
import com.mycompany.test_1.dao.RecepcionistaDAO;
import com.mycompany.test_1.dao.impl.RecepcionistaDAOImpl;
import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.dao.impl.DoctorDAOImpl;

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
            RecepcionistaDAO pdae = new RecepcionistaDAOImpl();
            //cuenta total
            int totalCountRec=pdae.cuentaTotalRec();
            
            DoctorDAO pdai = new DoctorDAOImpl();
            //cuenta total
            int totalCountDoc=pdai.cuentaTotalDoc();
            
            PacienteDAO pdao = new PacienteDAOImpl();
            //cuenta total
            int totalCountPac=pdao.cuentaTotal();
            // Cuenta por sexo
            int maleCount   = pdao.countByGender("Masculino");
            int femaleCount = pdao.countByGender("Femenino");

            req.setAttribute("totalCountRec",totalCountRec);
            req.setAttribute("totalCountDoc",totalCountDoc);
            req.setAttribute("totalCountPac",totalCountPac);
            req.setAttribute("maleCount", maleCount);
            req.setAttribute("femaleCount", femaleCount);

            req.getRequestDispatcher("/Admin/ad_index.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error cargando dashboard", e);
        }
    }
}
