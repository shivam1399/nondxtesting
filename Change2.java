package com.autorabit.codereview;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.util.Arrays;

public class Change2 {

    private static final String FILE_PATH = System.getProperty("java.io.tmpdir") + "/data.txt";

    public void readFile() {
        try (FileInputStream fis = new FileInputStream(FILE_PATH)) {
            int i;
            while ((i = fis.read()) != -1) {
                System.out.print((char) i);
            }
        } catch (IOException e) {
            System.out.println("Error reading file: " + e);
        }
    }

    public void secureHash(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(password.getBytes());
            System.out.println(Arrays.toString(hash));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void process() {
        for (int i = 0; i < 10; i++) {
            readFile();
            secureHash("test123");
        }
    }
}