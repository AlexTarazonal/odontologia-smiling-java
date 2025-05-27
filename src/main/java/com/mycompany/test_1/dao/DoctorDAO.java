package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Doctor;
import java.util.List;

public interface DoctorDAO {
    List<Doctor> listar() throws Exception;
    Doctor porId(String id) throws Exception;
    void crear(Doctor d) throws Exception;
    void actualizar(Doctor d) throws Exception;
    void eliminar(String id) throws Exception;
}
