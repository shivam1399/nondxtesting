package com.autorabit.codereview;

import java.io.*;
import java.util.*;

public class Change2 {

    // ❌ Magic number and hardcoded file path
    private static final String FILE_PATH = "/tmp/data.txt";

    public void readFile() {
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(FILE_PATH);
            int i;
            while ((i = fis.read()) != -1) {
                System.out.print((char) i);
            }
        } catch (Exception e) {
            System.out.println("Error reading file: " + e);
        }
        // ❌ Resource leak - fis not closed in finally block
    }

    public void insecureHash(String password) {
        try {
            // ❌ Insecure hashing (MD5)
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] hash = md.digest(password.getBytes());
            System.out.println(Arrays.toString(hash));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ❌ Long method doing too much - Code smell
    public void process() {
        for (int i = 0; i < 10; i++) {
            readFile();
            insecureHash("test123");
        }
    }
}
