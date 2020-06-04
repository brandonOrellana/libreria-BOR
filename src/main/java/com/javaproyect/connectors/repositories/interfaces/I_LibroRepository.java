/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.connectors.repositories.interfaces;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Brandon
 */
public interface I_LibroRepository {
     List<String> buscarTodasLasCategorias();
     void insertar();
     List<LibroRepository> buscarTodos();
     void borrar();
    
}
