package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.RecetaDAO;
import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.RecetaDAOImpl;
import com.mycompany.test_1.dao.impl.DoctorDAOImpl;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;
import com.mycompany.test_1.models.Receta;
import com.mycompany.test_1.models.Doctor;
import com.mycompany.test_1.models.Paciente;
import com.mycompany.test_1.models.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name="RecetaServlet", urlPatterns={"/user/recetas","/user/recetas/delete/*"})
public class RecetaServlet extends HttpServlet {
    private RecetaDAO recetaDao       = new RecetaDAOImpl();
    private PacienteDAO pacienteDao   = new PacienteDAOImpl();
    private DoctorDAO doctorDao       = new DoctorDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String pathInfo = req.getPathInfo(); // "/3" when deleting
        if (pathInfo != null && pathInfo.length() > 1) {
            String idStr = pathInfo.substring(1);
            try {
                recetaDao.eliminar(Integer.parseInt(idStr));
            } catch (Exception e) {
                throw new ServletException("Error eliminando receta", e);
            }
            resp.sendRedirect(req.getContextPath() + "/user/recetas");
            return;
        }

        try {
            HttpSession session = req.getSession(false);
            Usuario user = (Usuario) session.getAttribute("user");
            if (user == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
            Paciente paciente = pacienteDao.porId(user.getId());
            req.setAttribute("paciente", paciente);

            List<Receta> recetas = recetaDao.listar();
            req.setAttribute("recetas", recetas);

            List<Doctor> doctores = doctorDao.listar();
            req.setAttribute("doctores", doctores);

            req.getRequestDispatcher("/Usuario/us_recetas.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error cargando recetas", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            HttpSession session = req.getSession(false);
            Usuario user = (Usuario) session.getAttribute("user");
            if (user == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
            String pacienteId = user.getId();

            Receta r = new Receta();
            r.setPacienteId(pacienteId);
            r.setDoctorId(req.getParameter("doctorId"));
            r.setFecha(LocalDate.parse(req.getParameter("fecha")));
            r.setDetalle(req.getParameter("detalle"));

            recetaDao.crear(r);
            resp.sendRedirect(req.getContextPath() + "/user/recetas");
        } catch (Exception e) {
            throw new ServletException("Error creando receta", e);
        }
    }
}
