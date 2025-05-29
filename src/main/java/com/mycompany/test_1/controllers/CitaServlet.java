package com.mycompany.test_1.controllers;

import com.mycompany.test_1.dao.CitaDAO;
import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.dao.impl.CitaDAOImpl;
import com.mycompany.test_1.dao.impl.DoctorDAOImpl;
import com.mycompany.test_1.dao.impl.PacienteDAOImpl;
import com.mycompany.test_1.models.Cita;
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
import java.time.LocalTime;
import java.util.List;

@WebServlet(name="CitaServlet", urlPatterns={"/user/citas","/user/citas/delete/*"})
public class CitaServlet extends HttpServlet {
    private CitaDAO citaDao         = new CitaDAOImpl();
    private DoctorDAO doctorDao     = new DoctorDAOImpl();
    private PacienteDAO pacienteDao = new PacienteDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String pathInfo = req.getPathInfo(); // for delete mapping gives "/3"
        if (pathInfo != null && pathInfo.length() > 1) {
            // Delete flow: pathInfo = "/{id}"
            String idStr = pathInfo.substring(1);
            try {
                citaDao.eliminar(Integer.parseInt(idStr));
            } catch (Exception e) {
                throw new ServletException("Error eliminando cita", e);
            }
            resp.sendRedirect(req.getContextPath() + "/user/citas");
            return;
        }

        // Default: list citas
        try {
            HttpSession session = req.getSession(false);
            Usuario user = (Usuario) session.getAttribute("user");
            if (user == null) {
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
            Paciente pac = pacienteDao.porId(user.getId());
            req.setAttribute("paciente", pac);

            List<Cita> citas = citaDao.listar();
            req.setAttribute("citas", citas);

            List<Doctor> docs = doctorDao.listar();
            req.setAttribute("doctores", docs);

            req.getRequestDispatcher("/Usuario/us_citas.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Error cargando citas", e);
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

            Cita c = new Cita();
            c.setPacienteId(pacienteId);
            c.setDoctorId(req.getParameter("doctorId"));
            c.setFecha(LocalDate.parse(req.getParameter("fecha")));
            c.setHora(LocalTime.parse(req.getParameter("hora")));
            c.setEstado(req.getParameter("estado"));
            citaDao.crear(c);

            resp.sendRedirect(req.getContextPath() + "/user/citas");
        } catch (Exception e) {
            throw new ServletException("Error creando cita", e);
        }
    }
}
