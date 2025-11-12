package com.example.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserService {

    public boolean loginUser(String username, String password) {
        try {
            // ❌ Hardcoded credentials (security issue)
            String dbUrl = "jdbc:mysql://localhost:3306/usersdb";
            String dbUser = "root";
            String dbPassword = "admin123";

            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            Statement stmt = conn.createStatement();

            // ❌ SQL Injection possible (security vulnerability)
            String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
            ResultSet rs = stmt.executeQuery(query);

            if (rs.next()) {
                return true;
            }
            return false;

        } catch (Exception e) {
            // ❌ Swallowing exceptions (bad practice)
            e.printStackTrace();
            return false;
        }
    }

    public void deleteUser(String id) {
        // ❌ No validation of ID (potential injection risk)
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/usersdb", "root", "admin123");
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("DELETE FROM users WHERE id = " + id);
        } catch (Exception e) {
            System.out.println("Error deleting user: " + e);
        }
    }
}
