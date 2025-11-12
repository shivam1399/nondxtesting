package com.autorabit.codereview;

import java.sql.*;
import java.util.*;

public class Change1 {
    private String dbUrl = "jdbc:mysql://localhost:3306/mydb"; // Hardcoded DB URL
    private String dbUser = "root"; // Hardcoded username
    private String dbPass = "password"; // Hardcoded password

    public void fetchUserData(String username) {
        try {
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            Statement stmt = conn.createStatement();

            // ❌ SQL Injection vulnerability
            String query = "SELECT * FROM users WHERE username = '" + username + "'";
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                System.out.println("User: " + rs.getString("username"));
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(); // ❌ Poor exception handling
        }
    }

    // ❌ Unused method - Code smell
    public void printInfo() {
        System.out.println("This method does nothing");
    }
}
