package pe.edu.seg;

import java.util.LinkedList;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import pe.edu.util.Conexion;

public class Paciente extends Usuario {
    
    private String sexo;
    private String telefono;
    private String correo;
    private String estatus;

    // Getters y setters
    public String getSexo() { return sexo; }
    public void setSexo(String sexo) { this.sexo = sexo; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }

    public String getEstatus() { return estatus; }
    public void setEstatus(String estatus) { this.estatus = estatus; }

    // Método específico para contar pacientes por sexo
    
    public int contarPorSexo(String sexoBuscado) throws ClassNotFoundException {
        int cantidad = 0;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "SELECT COUNT(*) FROM paciente WHERE sexo = ?";
            PreparedStatement pst = cnx.prepareStatement(query);
            pst.setString(1, sexoBuscado);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                cantidad = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
        return cantidad;
    }
    public LinkedList<Paciente> muestraPacientes() throws ClassNotFoundException {
    
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            LinkedList<Paciente> lista = new LinkedList<>();
            String query = "SELECT * FROM paciente";
            Statement st = cnx.createStatement();
            ResultSet rs = st.executeQuery(query);

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
            return lista;


        } catch (SQLException e) {
            System.out.println(e.getMessage());

        }

        return null;
    }

    
    public void verPaciente() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "SELECT * FROM paciente WHERE id = ?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, this.getId());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                this.setNombre(rs.getString("nombre"));
                this.setSexo(rs.getString("sexo"));
                this.setTelefono(rs.getString("telefono"));
                this.setCorreo(rs.getString("correo"));
                this.setEstatus(rs.getString("estatus"));
            }


        } catch (SQLException e) {
           System.out.println(e.getMessage());

        }
    }



    public void agregarPaciente(String id, String nom, String sexo, String telefono, String correo, String estatus) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "INSERT INTO paciente (id, nombre, sexo, telefono, correo, estatus) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, nom);
            ps.setString(3, sexo);
            ps.setString(4, telefono);
            ps.setString(5, correo);
            ps.setString(6, estatus);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }


    public void actualizarPaciente(String id, String nombre, String sexo, String telefono, String correo, String estatus) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "UPDATE paciente SET nombre=?, sexo=?, telefono=?, correo=?, estatus=? WHERE id=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, sexo);
            ps.setString(3, telefono);
            ps.setString(4, correo);
            ps.setString(5, estatus);
            ps.setString(6, id);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }


    public void eliminarPaciente(String id) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "DELETE FROM paciente WHERE id=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
    }
}}
