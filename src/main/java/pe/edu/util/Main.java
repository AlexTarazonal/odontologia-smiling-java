package pe.edu.util;

public class Main {
    public static void main(String[] args) {
        try {
            Conexion con = new Conexion();
            int resultado = con.pruebaConexion();
            if (resultado == 1) {
                System.out.println("✅ Conexión exitosa a la base de datos.");
            } else {
                System.out.println("❌ No se pudo conectar a la base de datos.");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
