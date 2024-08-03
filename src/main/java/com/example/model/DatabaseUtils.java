package com.example.model;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtils {
    static {
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Method to get a connection to the default database
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/userdb"; // Your MySQL database name
        String user = "root"; // Your MySQL username
        String password = "22042001"; // Your MySQL password
        return DriverManager.getConnection(url, user, password);
    }

    // New method to get a connection to the product database
    public static Connection getConnectionToProductDB() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/productdb"; // Your new MySQL database name for products
        String user = "root"; // Your MySQL username
        String password = "22042001"; // Your MySQL password
        return DriverManager.getConnection(url, user, password);
    }
}
