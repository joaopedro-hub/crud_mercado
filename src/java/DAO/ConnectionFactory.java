/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author joaopedro
 */
public class ConnectionFactory {
    public Connection getConnection() throws ClassNotFoundException{
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/mercado", "root", "");
        } catch (SQLException e) {
            throw new RuntimeException("ConexaoDAO: " + e.getMessage());
        }
        System.out.println("Conectou");
        return conn;
    }
}
