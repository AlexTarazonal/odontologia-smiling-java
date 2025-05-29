package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Cita;

import java.util.List;

public interface CitaDAO {
    List<Cita> listar() throws Exception;
    void crear(Cita cita) throws Exception;
    void eliminar(int id) throws Exception;
}