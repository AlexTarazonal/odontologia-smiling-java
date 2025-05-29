package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.DoctorDAO;
import com.mycompany.test_1.models.Doctor;
import com.mycompany.test_1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAOImpl implements DoctorDAO {
    private static final String SQL_LISTAR =
        "SELECT id, nombre, sexo, telefono, correo, especialidad FROM doctor";
    private static final String SQL_POR_ID =
        "SELECT id, nombre, sexo, telefono, correo, especialidad FROM doctor WHERE id=?";
    private static final String SQL_INSERT =
        "INSERT INTO doctor (id, nombre, sexo, telefono, correo, especialidad) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE =
        "UPDATE doctor SET nombre=?, sexo=?, telefono=?, correo=?, especialidad=? WHERE id=?";
    private static final String SQL_DELETE =
        "DELETE FROM doctor WHERE id=?";
    private static final String SQL_COUNT =
        "SELECT COUNT(*) Doctores FROM doctor";
    @Override
    public int cuentaTotalDoc() throws Exception , SQLException{
        int total=0;
        try (Connection cnx = Conexion.getConnection();
            PreparedStatement ps = cnx.prepareStatement(SQL_COUNT);
            ResultSet rs=ps.executeQuery()) {
            
            if(rs.next()){
                total=rs.getInt("Doctores");
            }
        }
        return total;
    }
    
    @Override
    public List<Doctor> listar() throws Exception {
        List<Doctor> lista = new ArrayList<>();
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_LISTAR);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Doctor d = new Doctor();
                d.setId(rs.getString("id"));
                d.setNombre(rs.getString("nombre"));
                d.setSexo(rs.getString("sexo"));
                d.setTelefono(rs.getString("telefono"));
                d.setCorreo(rs.getString("correo"));
                d.setEspecialidad(rs.getString("especialidad"));
                lista.add(d);
            }
        }
        return lista;
    }

    @Override
    public Doctor porId(String id) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_POR_ID)) {
            ps.setString(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Doctor d = new Doctor();
                    d.setId(rs.getString("id"));
                    d.setNombre(rs.getString("nombre"));
                    d.setSexo(rs.getString("sexo"));
                    d.setTelefono(rs.getString("telefono"));
                    d.setCorreo(rs.getString("correo"));
                    d.setEspecialidad(rs.getString("especialidad"));
                    return d;
                }
            }
        }
        return null;
    }

    @Override
    public void crear(Doctor d) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_INSERT)) {
            ps.setString(1, d.getId());
            ps.setString(2, d.getNombre());
            ps.setString(3, d.getSexo());
            ps.setString(4, d.getTelefono());
            ps.setString(5, d.getCorreo());
            ps.setString(6, d.getEspecialidad());
            ps.executeUpdate();
        }
    }

    @Override
    public void actualizar(Doctor d) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_UPDATE)) {
            ps.setString(1, d.getNombre());
            ps.setString(2, d.getSexo());
            ps.setString(3, d.getTelefono());
            ps.setString(4, d.getCorreo());
            ps.setString(5, d.getEspecialidad());
            ps.setString(6, d.getId());
            ps.executeUpdate();
        }
    }

    @Override
    public void eliminar(String id) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_DELETE)) {
            ps.setString(1, id);
            ps.executeUpdate();
        }
    }
}
