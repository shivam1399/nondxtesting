package com.example;

import java.util.*;

public class BadExample {

    public static String PASSWORD = "123456"; // ❌ hardcoded password
    private List data = new ArrayList(); // ❌ raw type, no generics
    private static BadExample instance; // ❌ not thread-safe singleton

    public BadExample() {}

    public static BadExample getInstance() {
        if (instance == null) {
            instance = new BadExample();
        }
        return instance;
    }

    public void calc(List<Integer> numbers) {
        int s = 0;
        for (int i = 0; i < numbers.size(); i++) {
            s = s + numbers.get(i);
        }
        System.out.println("Sum=" + s);
    }

    public void getUser(String username) {
        String query = "SELECT * FROM users WHERE name = '" + username + "'";
        System.out.println("Executing: " + query);
    }

    public static void main(String[] args) {
        BadExample ex = new BadExample();
        ex.calc(Arrays.asList(1,2,3,4,5));
        ex.getUser("admin' OR 1=1 --");
        System.out.println("Password is: " + PASSWORD);
    }
}
