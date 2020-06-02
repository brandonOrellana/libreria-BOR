/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.connectors.repositories.jdbc;

import com.javaproyect.connectors.DataBaseHelper;
import com.javaproyect.connectors.repositories.interfaces.I_LibroRepository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Brandon
 */
public class LibroRepository implements I_LibroRepository{
    private String isbn;
    private String titulo;
    private String categoria;

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public LibroRepository() {
    }
    
    public LibroRepository(String isbn, String titulo, String categoria) {
        this.isbn = isbn;
        this.titulo = titulo;
        this.categoria = categoria;
    }
    

    @Override
    public List<String> buscarTodasLasCategorias() {
        String consultaSQL = "select distinct(categoria) from Libros";
        DataBaseHelper helper = new DataBaseHelper<String>();
        List<String> listaDeCategorias  = helper.seleccionarRegistros(consultaSQL, String.class);
        return listaDeCategorias;
       }

    @Override
    public void  insertar() {
        String consultaSQL = "insert into Libros(isbn,titulo,categoria) values";
        consultaSQL += "('" + this.isbn + "','" + this.titulo + "','" + this.categoria + "')";
        DataBaseHelper helper = new DataBaseHelper();
        helper.modificarRgistro(consultaSQL);
    }

    @Override
    public List<LibroRepository> buscarTodos() {
        String consultaSQL = "select isbn,titulo,categoria from Libros";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<LibroRepository>();
        List<LibroRepository> listaDeLibros = helper.seleccionarRegistros(consultaSQL, LibroRepository.class);
        return listaDeLibros;
    }
    
}
