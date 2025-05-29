package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.PacienteDAO;
import com.mycompany.test_1.models.Paciente;
import com.mycompany.test_1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PacienteDAOImpl implements PacienteDAO {
    private static final String SQL_LISTAR =
        "SELECT id, nombre, sexo, telefono, correo, estatus FROM paciente";
    private static final String SQL_POR_ID =
        "SELECT id, nombre, sexo, telefono, correo, estatus FROM paciente WHERE id=?";
    private static final String SQL_INSERT =
        "INSERT INTO paciente (id, nombre, sexo, telefono, correo, estatus) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE =
        "UPDATE paciente SET nombre=?, sexo=?, telefono=?, correo=?, estatus=? WHERE id=?";
    private static final String SQL_DELETE =
        "DELETE FROM paciente WHERE id=?";
    private static final String SQL_COUNT_GENDER =
        "SELECT COUNT(*) FROM paciente WHERE sexo=?";
    private static final String SQL_COUNT =
        "SELECT COUNT(*) Pacientes FROM paciente";
    
    
    @Override
    public List<Paciente> listar() throws Exception {
        List<Paciente> lista = new ArrayList<>();
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_LISTAR);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Paciente p = new Paciente();
                p.setId(rs.getString("id"));
                p.setNombre(rs.getString("nombre"));
                p.setSexo(rs.getString("sexo"));
                p.setTelefono(rs.getString("telefono"));
                p.setCorreo(rs.getString("correo"));
                p.setEstatus(rs.getString("estatus"));
                lista.add(p);
            }
        }
        return lista;
    }

    @Override
    public Paciente porId(String id) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_POR_ID)) {
            ps.setString(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Paciente p = new Paciente();
                    p.setId(rs.getString("id"));
                    p.setNombre(rs.getString("nombre"));
                    p.setSexo(rs.getString("sexo"));
                    p.setTelefono(rs.getString("telefono"));
                    p.setCorreo(rs.getString("correo"));
                    p.setEstatus(rs.getString("estatus"));
                    return p;
                }
            }
        }
        return null;
    }

    @Override
    public void crear(Paciente p) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_INSERT)) {
            ps.setString(1, p.getId());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getSexo());
            ps.setString(4, p.getTelefono());
            ps.setString(5, p.getCorreo());
            ps.setString(6, p.getEstatus());
            ps.executeUpdate();
        }
    }

    @Override
    public void actualizar(Paciente p) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_UPDATE)) {
            ps.setString(1, p.getNombre());
            ps.setString(2, p.getSexo());
            ps.setString(3, p.getTelefono());
            ps.setString(4, p.getCorreo());
            ps.setString(5, p.getEstatus());
            ps.setString(6, p.getId());
            ps.executeUpdate();
        }
    }
    
    @Override
    public int countByGender(String sexo) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_COUNT_GENDER)) {
            ps.setString(1, sexo);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? rs.getInt(1) : 0;
            }
        }
    }
    
    @Override
    public int cuentaTotal() throws Exception , SQLException{
        int total=0;
        try (Connection cnx = Conexion.getConnection();
            PreparedStatement ps = cnx.prepareStatement(SQL_COUNT);
            ResultSet rs=ps.executeQuery()) {
            
            if(rs.next()){
                total=rs.getInt("Pacientes");
            }
        }
        return total;
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
