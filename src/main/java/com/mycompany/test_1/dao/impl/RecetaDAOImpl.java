package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.RecetaDAO;
import com.mycompany.test_1.models.Receta;
import com.mycompany.test_1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecetaDAOImpl implements RecetaDAO {
  private static final String SQL_LISTAR =
    "SELECT r.id, r.paciente_id, p.nombre AS paciente_nombre, " +
    "       r.doctor_id, d.nombre    AS doctor_nombre, " +
    "       r.fecha, r.detalle " +
    "  FROM receta r " +
    "  JOIN paciente p ON r.paciente_id = p.id " +
    "  JOIN doctor   d ON r.doctor_id   = d.id";

  private static final String SQL_INSERT =
    "INSERT INTO receta (paciente_id, doctor_id, fecha, detalle) VALUES (?, ?, ?, ?)";

  private static final String SQL_DELETE =
    "DELETE FROM receta WHERE id=?";

  @Override
  public List<Receta> listar() throws Exception {
    List<Receta> lista = new ArrayList<>();
    try (Connection cnx = Conexion.getConnection();
         PreparedStatement ps = cnx.prepareStatement(SQL_LISTAR);
         ResultSet rs = ps.executeQuery()) {
      while (rs.next()) {
        Receta r = new Receta();
        r.setId(rs.getInt("id"));
        r.setPacienteId(rs.getString("paciente_id"));
        r.setPacienteNombre(rs.getString("paciente_nombre"));
        r.setDoctorId(rs.getString("doctor_id"));
        r.setDoctorNombre(rs.getString("doctor_nombre"));
        r.setFecha(rs.getDate("fecha").toLocalDate());
        r.setDetalle(rs.getString("detalle"));
        lista.add(r);
      }
    }
    return lista;
  }

  @Override
  public void crear(Receta r) throws Exception {
    try (Connection cnx = Conexion.getConnection();
         PreparedStatement ps = cnx.prepareStatement(SQL_INSERT)) {
      ps.setString(1, r.getPacienteId());
      ps.setString(2, r.getDoctorId());
      ps.setDate(3, Date.valueOf(r.getFecha()));
      ps.setString(4, r.getDetalle());
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
