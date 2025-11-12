package com.example;

import java.util.*;
import java.sql.*;

public class BadExample {

    private static final String PASSWORD = System.getenv("SECURE_PASSWORD"); // Use secure storage
    private final List<Integer> data = new ArrayList<>(); // Use generics
    private static final BadExample instance = new BadExample(); // Thread-safe singleton

    private BadExample() {}

    public static BadExample getInstance() { // Singleton access
        return instance;
    }

    public void calc(List<Integer> numbers) {
        if (numbers == null) throw new IllegalArgumentException("Input list cannot be null"); // Validate input
        int s = numbers.stream().mapToInt(Integer::intValue).sum(); // Use stream for summation
        System.out.println("Sum=" + s);
    }

    public void getUser(String username) throws SQLException {
        String query = "SELECT * FROM users WHERE name = ?"; // Use parameterized query
        try (Connection conn = DriverManager.getConnection("jdbc:your_database_url");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, username); // Safely set username
            System.out.println("Executing: " + pstmt);
            // Execute query
        }
    }

    public static void main(String[] args) {
        BadExample ex = BadExample.getInstance();
        ex.calc(Arrays.asList(1, 2, 3, 4, 5));
        try {
            ex.getUser("admin' OR 1=1 --");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // System.out.println("Password is: " + PASSWORD); // Removed sensitive information
    }
}