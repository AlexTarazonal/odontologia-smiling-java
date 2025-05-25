package pe.edu.seg;

import java.util.LinkedList;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import pe.edu.util.Conexion;

public class Recepcionista extends Usuario {
    
    private String sexo;
    private String telefono;
    private String correo;

    // Getters y setters
    public String getSexo() { return sexo; }
    public void setSexo(String sexo) { this.sexo = sexo; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }

    // Mostrar todos los recepcionistas
    public LinkedList<Recepcionista> muestraRecepcionistas() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            LinkedList<Recepcionista> lista = new LinkedList<>();
            String query = "SELECT * FROM recepcionista";
            Statement st = cnx.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                Recepcionista r = new Recepcionista();
                r.setId(rs.getString("id"));
                r.setNombre(rs.getString("nombre"));
                r.setSexo(rs.getString("sexo"));
                r.setTelefono(rs.getString("telefono"));
                r.setCorreo(rs.getString("correo"));
                lista.add(r);
            }
            return lista;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    // Ver un recepcionista específico por ID
    public void verRecepcionista() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "SELECT * FROM recepcionista WHERE id = ?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, this.getId());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                this.setNombre(rs.getString("nombre"));
                this.setSexo(rs.getString("sexo"));
                this.setTelefono(rs.getString("telefono"));
                this.setCorreo(rs.getString("correo"));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Agregar un nuevo recepcionista
    public void agregarRecepcionista(String id, String nombre, String sexo, String telefono, String correo) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "INSERT INTO recepcionista (id, nombre, sexo, telefono, correo) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, nombre);
            ps.setString(3, sexo);
            ps.setString(4, telefono);
            ps.setString(5, correo);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Actualizar un recepcionista existente
    public void actualizarRecepcionista(String id, String nombre, String sexo, String telefono, String correo) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "UPDATE recepcionista SET nombre=?, sexo=?, telefono=?, correo=? WHERE id=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, sexo);
            ps.setString(3, telefono);
            ps.setString(4, correo);
            ps.setString(5, id);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Eliminar un recepcionista
    public void eliminarRecepcionista(String id) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "DELETE FROM recepcionista WHERE id=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}