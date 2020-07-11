/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.connectors.repositories.jdbc;

import com.javaproyect.connectors.DataBaseException;
import com.javaproyect.connectors.DataBaseHelper;
import com.javaproyect.connectors.repositories.interfaces.I_LibroRepository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 *
 * @author Brandon
 */
@Entity
@Table(name = "libros")
public class LibroRepository implements I_LibroRepository{
    
    @Id
    @Column(name = "Isbn")
    private String isbn;
    
    @Column(name = "Titulo")
    private String titulo;
    
    @Column(name = "Categoria")
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

    public LibroRepository(String isbn) {
        this.isbn = isbn;
    }

    @Override
    public int hashCode() {
        return isbn.hashCode();
    }

    @Override
    public boolean equals(Object o) {
        String isbnLibro = ((LibroRepository)o).getIsbn();
        return isbnLibro.equals(isbn);
    }
    

    @Override
    @SuppressWarnings("unchecked")
    public List<String> buscarTodasLasCategorias() {
        String consultaSQL = "select distinct(categoria) from Libros";
        DataBaseHelper helper = new DataBaseHelper<String>();
        List<String> listaDeCategorias  = helper.seleccionarRegistros(consultaSQL, String.class);
        return listaDeCategorias;
       }

    @Override
    public void  insertar(){
        String consultaSQL = "insert into Libros(isbn,titulo,categoria) values";
        consultaSQL += "('" + this.isbn + "','" + this.titulo + "','" + this.categoria + "')";
        DataBaseHelper helper = new DataBaseHelper();
        helper.modificarRegistro(consultaSQL);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<LibroRepository> buscarTodos() {
        String consultaSQL = "select isbn,titulo,categoria from Libros";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<LibroRepository>();
        List<LibroRepository> listaDeLibros = helper.seleccionarRegistros(consultaSQL, LibroRepository.class);
        return listaDeLibros;
    }
    
    public void borrar() {
        String consultaSQL ="delete from Libros where isbn='" + this.isbn+ "'";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<>();
        helper.modificarRegistro(consultaSQL);
    }
    @SuppressWarnings("unchecked")
    public LibroRepository buscarPorClave(String isbn){
        String consultaSQL = "select isbn,titulo,categoria from Libros where isbn='"+ isbn+"'";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<>();
        List<LibroRepository> listaDeLibros = helper.seleccionarRegistros(consultaSQL, LibroRepository.class);
        return listaDeLibros.get(0);
    }
    
    public void salvar(){
        String consultaSQL = "update  Libros  set titulo='" + this.titulo+ "', categoria='" + categoria + "' where isbn='" + isbn + "'";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<>();
        helper.modificarRegistro(consultaSQL);
    }
    @SuppressWarnings("unchecked")
    public List<LibroRepository> buscarPorCategoria(String categoria){
        String consultaSQL = "select isbn,titulo,categoria from Libros where categoria='"+ categoria+"'";
        DataBaseHelper<LibroRepository> helper = new DataBaseHelper<>();
        List<LibroRepository> listaDeLibros = helper.seleccionarRegistros(consultaSQL, LibroRepository.class);
        return listaDeLibros;
    }
}
