package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Paciente;
import java.util.List;

public interface PacienteDAO {
    List<Paciente> listar() throws Exception;
    Paciente porId(String id) throws Exception;
    void crear(Paciente p) throws Exception;
    void actualizar(Paciente p) throws Exception;
    void eliminar(String id) throws Exception;
       int countByGender(String sexo) throws Exception;
}
