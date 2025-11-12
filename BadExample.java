package com.example;

import java.util.*;
import java.sql.*;

public class BadExample {

    private static final String PASSWORD = System.getenv("SECURE_PASSWORD");
    private final List<Integer> data = new ArrayList<>();
    private static BadExample instance;

    private BadExample() {}

    public static BadExample getInstance() {
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
        int s = numbers.stream().mapToInt(Integer::intValue).sum();
        System.out.println("Sum=" + s);
    }

    public void getUser(String username) throws SQLException {
        String query = "SELECT * FROM users WHERE name = ?";
        try (Connection conn = DriverManager.getConnection("jdbc:your_database_url");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            // Process ResultSet
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
    }
}