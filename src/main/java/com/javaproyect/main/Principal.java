/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.main;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.Session;


/**
 *
 * @author Brandon
 */
public class Principal {
    public static void main(String[] args) {
        
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            LibroRepository libro = new LibroRepository("2", "java", "programaconJava");
            session.save(libro);
            transaction.commit();
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            if(transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
        }
        
        /*
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            List <LibroRepository> libros = session.createQuery("from Libros", LibroRepository.class).list();
            libros.forEach(s->System.out.println(s.getTitulo()));
        }catch(Exception e){
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }*/
        
    }
    
}
