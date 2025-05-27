
package pe.edu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Estudiante
 */
public class Conexion {
    private Connection cnx;
    
    public Connection conecta() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String usr = "suusuario";
            String psw = "sucontraseña";
            String url = "url";
            cnx = DriverManager.getConnection(url, usr, psw);
            return cnx;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    public int pruebaConexion() throws ClassNotFoundException {
        Connection c = conecta();
        if (c!= null) {
            return 1;
        } else {
            return 0;
        }
    }    
}
