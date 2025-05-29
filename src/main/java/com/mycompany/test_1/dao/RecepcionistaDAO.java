package com.mycompany.test_1.dao;

import com.mycompany.test_1.models.Recepcionista;
import java.util.List;

public interface RecepcionistaDAO {
    List<Recepcionista> listar() throws Exception;
    Recepcionista porId(String id) throws Exception;
    void crear(Recepcionista r) throws Exception;
    void actualizar(Recepcionista r) throws Exception;
    void eliminar(String id) throws Exception;
    int cuentaTotalRec() throws Exception;
}
