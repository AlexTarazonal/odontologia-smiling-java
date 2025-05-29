package com.mycompany.test_1.dao.impl;

import com.mycompany.test_1.dao.UsuarioDAO;
import com.mycompany.test_1.models.Usuario;
import com.mycompany.test_1.util.Conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class UsuarioDAOImpl implements UsuarioDAO {

    private static final String SQL_AUTH
        = "SELECT id, nombre, tipo FROM usuario WHERE id=? AND password=?";
    private static final String SQL_COUNT_ROLE
        = "SELECT COUNT(*) FROM usuario WHERE tipo=?";
    private static final String SQL_INSERT_USUARIO 
        = "INSERT INTO usuario (id, password, nombre, tipo) VALUES (?, ?, ?, ?)";
    private static final String SQL_LIST
        = "SELECT id, password, nombre, tipo FROM usuario";
    private static final String SQL_ELIMINAR
        = "DELETE FROM usuario WHERE id=?";
    private static final String SQL_ACTUALIZAR
        = "UPDATE usuario SET password=?, nombre=? ,tipo=? where id=?";
     private static final String SQL_POR_ID
        = "SELECT id, password, nombre, tipo FROM usuario WHERE id=?";
    @Override
    public Usuario authenticate(String id, String password)
            throws ClassNotFoundException, SQLException {
        // Usa conecta() en lugar de getConnection()
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_AUTH)) {

            ps.setString(1, id);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Usuario u = new Usuario();
                    u.setId(rs.getString("id"));
                    u.setNombre(rs.getString("nombre"));
                    u.setTipo(rs.getString("tipo"));
                    return u;
                }
            }
        }
        return null;
    }

    @Override
    public int countByRole(String role)
            throws ClassNotFoundException, SQLException {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement pst = cnx.prepareStatement(SQL_COUNT_ROLE)) {

            pst.setString(1, role);
            try (ResultSet rs = pst.executeQuery()) {
                return rs.next() ? rs.getInt(1) : 0;
            }
        }
    }
    


    @Override
    public void crearUser(Usuario u)throws ClassNotFoundException, SQLException{
        try (Connection cnx = Conexion.getConnection();
        PreparedStatement ps = cnx.prepareStatement(SQL_INSERT_USUARIO)) {
        ps.setString(1, u.getId());
        ps.setString(2, u.getPassword());
        ps.setString(3, u.getNombre());
        ps.setString(4, u.getTipo());
        ps.executeUpdate();
        }
    }
    @Override
    public void actualizarUser(Usuario u) throws ClassNotFoundException, SQLException {
        

        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_ACTUALIZAR)) {
            ps.setString(1, u.getPassword());
            ps.setString(2, u.getNombre());
            ps.setString(3, u.getTipo());
            ps.setString(4, u.getId());
            ps.executeUpdate();
        }
    }
    
        
    @Override
    public Usuario porId(String id) throws ClassNotFoundException, SQLException {
        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_POR_ID)) {
            ps.setString(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Usuario u = new Usuario();
                    u.setId(rs.getString("id"));
                    u.setPassword(rs.getString("password"));
                    u.setNombre(rs.getString("nombre"));
                    u.setTipo(rs.getString("tipo"));
                    return u;
                }
            }
        }
        return null;
    }
    
    @Override
    public void eliminarUser(String id) throws ClassNotFoundException, SQLException {
        

        try (Connection cnx = Conexion.getConnection();
             PreparedStatement ps = cnx.prepareStatement(SQL_ELIMINAR)) {
            ps.setString(1, id);
            ps.executeUpdate();
        }
    }
    
    
     
    @Override
    public List<Usuario> listar()
            throws ClassNotFoundException, SQLException {
        List<Usuario> usuarios = new ArrayList<>();
        try (Connection cnx = Conexion.getConnection();
             Statement st = cnx.createStatement();
             ResultSet rs = st.executeQuery(SQL_LIST)) {

            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(rs.getString("id"));
                u.setPassword(rs.getString("password"));
                u.setNombre(rs.getString("nombre"));
                u.setTipo(rs.getString("tipo"));
                usuarios.add(u);
            }
        }
        return usuarios;
    }
    
   


    


}
