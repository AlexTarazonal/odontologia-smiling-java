package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.RecepcionistaDAO;
import com.mycompany.test_1.models.Recepcionista;
import com.mycompany.test_1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecepcionistaDAOImpl implements RecepcionistaDAO {
    private static final String SQL_LISTAR =
        "SELECT id, nombre, sexo, telefono, correo FROM recepcionista";
    private static final String SQL_POR_ID =
        "SELECT id, nombre, sexo, telefono, correo FROM recepcionista WHERE id=?";
    private static final String SQL_INSERT =
        "INSERT INTO recepcionista (id, nombre, sexo, telefono, correo) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE =
        "UPDATE recepcionista SET nombre=?, sexo=?, telefono=?, correo=? WHERE id=?";
    private static final String SQL_DELETE =
        "DELETE FROM recepcionista WHERE id=?";

    @Override
    public List<Recepcionista> listar() throws Exception {
        List<Recepcionista> lista = new ArrayList<>();
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_LISTAR);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Recepcionista r = new Recepcionista();
                r.setId(rs.getString("id"));
                r.setNombre(rs.getString("nombre"));
                r.setSexo(rs.getString("sexo"));
                r.setTelefono(rs.getString("telefono"));
                r.setCorreo(rs.getString("correo"));
                lista.add(r);
            }
        }
        return lista;
    }

    @Override
    public Recepcionista porId(String id) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_POR_ID)) {
            ps.setString(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Recepcionista r = new Recepcionista();
                    r.setId(rs.getString("id"));
                    r.setNombre(rs.getString("nombre"));
                    r.setSexo(rs.getString("sexo"));
                    r.setTelefono(rs.getString("telefono"));
                    r.setCorreo(rs.getString("correo"));
                    return r;
                }
            }
        }
        return null;
    }

    @Override
    public void crear(Recepcionista r) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_INSERT)) {
            ps.setString(1, r.getId());
            ps.setString(2, r.getNombre());
            ps.setString(3, r.getSexo());
            ps.setString(4, r.getTelefono());
            ps.setString(5, r.getCorreo());
            ps.executeUpdate();
        }
    }

    @Override
    public void actualizar(Recepcionista r) throws Exception {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_UPDATE)) {
            ps.setString(1, r.getNombre());
            ps.setString(2, r.getSexo());
            ps.setString(3, r.getTelefono());
            ps.setString(4, r.getCorreo());
            ps.setString(5, r.getId());
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
