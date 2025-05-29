package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Usuario;
import java.sql.SQLException;
import java.util.List;

public interface UsuarioDAO {
    Usuario authenticate(String id, String password)
        throws ClassNotFoundException, SQLException;

    int countByRole(String role)
        throws ClassNotFoundException, SQLException;

    List<Usuario> listar()
        throws ClassNotFoundException, SQLException;
    
    void crearUser(Usuario u)
        throws ClassNotFoundException, SQLException;
    void actualizarUser(Usuario u)
        throws ClassNotFoundException, SQLException;
    void eliminarUser(String id)
        throws ClassNotFoundException, SQLException;
     Usuario porId(String id)
        throws ClassNotFoundException, SQLException;    
}
