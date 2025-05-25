package pe.edu.seg;

import java.util.LinkedList;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import pe.edu.util.Conexion;

public class Doctor extends Usuario {
    
    private String sexo;
    private String telefono;
    private String correo;
    private String especialidad;

    // Getters y setters
    public String getSexo() { return sexo; }
    public void setSexo(String sexo) { this.sexo = sexo; }

    public String getTelefono() { return telefono; }
    public void setTelefono(String telefono) { this.telefono = telefono; }

    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }

    public String getEspecialidad() { return especialidad; }
    public void setEspecialidad(String especialidad) { this.especialidad = especialidad; }

    // Mostrar todos los doctores
    public LinkedList<Doctor> muestraDoctores() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            LinkedList<Doctor> lista = new LinkedList<>();
            String query = "SELECT * FROM doctor";
            Statement st = cnx.createStatement();
            ResultSet rs = st.executeQuery(query);

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
            return lista;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    // Ver un doctor específico por ID
    public void verDoctor() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "SELECT * FROM doctor WHERE id = ?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, this.getId());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                this.setNombre(rs.getString("nombre"));
                this.setSexo(rs.getString("sexo"));
                this.setTelefono(rs.getString("telefono"));
                this.setCorreo(rs.getString("correo"));
                this.setEspecialidad(rs.getString("especialidad"));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Agregar un nuevo doctor
    public void agregarDoctor(String id, String nombre, String sexo, String telefono, String correo, String especialidad) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "INSERT INTO doctor (id, nombre, sexo, telefono, correo, especialidad) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, nombre);
            ps.setString(3, sexo);
            ps.setString(4, telefono);
            ps.setString(5, correo);
            ps.setString(6, especialidad);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Actualizar un doctor existente
    public void actualizarDoctor(String id, String nombre, String sexo, String telefono, String correo, String especialidad) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "UPDATE doctor SET nombre=?, sexo=?, telefono=?, correo=?, especialidad=? WHERE id=?";
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setString(1, nombre);
            ps.setString(2, sexo);
            ps.setString(3, telefono);
            ps.setString(4, correo);
            ps.setString(5, especialidad);
            ps.setString(6, id);
            ps.executeUpdate();

            ps.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    // Eliminar un doctor
    public void eliminarDoctor(String id) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            String query = "DELETE FROM doctor WHERE id=?";
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