package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Receta;
import java.util.List;

public interface RecetaDAO {
    List<Receta> listar() throws Exception;
    void crear(Receta r) throws Exception;
    void eliminar(int id) throws Exception;
}