package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.CitaDAO;
import com.mycompany.test_1.models.Cita;
import com.mycompany.test_1.util.Conexion;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class CitaDAOImpl implements CitaDAO {
    private static final String SQL_LISTAR =
        "SELECT id, paciente_id, doctor_id, fecha, hora, estado FROM cita";
    private static final String SQL_INSERT =
        "INSERT INTO cita (paciente_id, doctor_id, fecha, hora, estado) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_DELETE =
        "DELETE FROM cita WHERE id = ?";

    @Override
    public List<Cita> listar() throws Exception {
        List<Cita> lista = new ArrayList<>();
        try (Connection cnx = Conexion.getConnection();
             Statement st = cnx.createStatement();
             ResultSet rs = st.executeQuery(SQL_LISTAR)) {
            while (rs.next()) {
                Cita c = new Cita();
                c.setId(rs.getInt("id"));
                c.setPacienteId(rs.getString("paciente_id"));
                c.setDoctorId(rs.getString("doctor_id"));
                c.setFecha(rs.getDate("fecha").toLocalDate());
                c.setHora(rs.getTime("hora").toLocalTime());
                c.setEstado(rs.getString("estado"));
                lista.add(c);
            }
        }
        return lista;
    }

    @Override
    public void crear(Cita cita) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_INSERT)) {
            ps.setString(1, cita.getPacienteId());
            ps.setString(2, cita.getDoctorId());
            ps.setDate(3, Date.valueOf(cita.getFecha()));
            ps.setTime(4, Time.valueOf(cita.getHora()));
            ps.setString(5, cita.getEstado());
            ps.executeUpdate();
        }
    }

    @Override
    public void eliminar(int id) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_DELETE)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}