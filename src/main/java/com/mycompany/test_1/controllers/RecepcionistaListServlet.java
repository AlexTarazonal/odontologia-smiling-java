package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.RecepcionistaDAO;
import com.mycompany.test_1.dao.impl.RecepcionistaDAOImpl;
import com.mycompany.test_1.models.Recepcionista;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name="RecepcionistaList", urlPatterns={"/recepcionista/list"})
public class RecepcionistaListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            RecepcionistaDAO dao = new RecepcionistaDAOImpl();
            List<Recepcionista> lista = dao.listar();
            req.setAttribute("recepcionista", lista);
            req.getRequestDispatcher("/Admin/rec_listado.jsp")
               .forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error al listar recepcionistas", e);
        }
    }
}
