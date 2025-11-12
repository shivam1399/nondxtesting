package com.example;

import java.util.*;
import java.sql.*;

public class BadExample {

    private static final String PASSWORD = System.getenv("SECURE_PASSWORD"); // Use secure storage
    private final List<Integer> data = new ArrayList<>(); // Use generics
    private static BadExample instance;

    private BadExample() {}

    public static BadExample getInstance() { // Make singleton thread-safe
        if (instance == null) {
            synchronized (BadExample.class) {
                if (instance == null) {
                    instance = new BadExample();
                }
            }
        }
        return instance;
    }

    public void calc(List<Integer> numbers) {
        int s = numbers.stream().mapToInt(Integer::intValue).sum(); // Use stream for summation
        System.out.println("Sum=" + s);
    }

    public void getUser(String username) {
        String query = "SELECT * FROM users WHERE name = ?"; // Use parameterized query
        System.out.println("Executing: " + query);
        try (Connection conn = DriverManager.getConnection("jdbc:your_database_url");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, username);
            // Execute query safely using prepared statements
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        BadExample ex = BadExample.getInstance();
        ex.calc(Arrays.asList(1, 2, 3, 4, 5));
        ex.getUser("admin' OR 1=1 --");
        // System.out.println("Password is: " + PASSWORD); // Removed sensitive information
    }
}