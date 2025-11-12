package com.example.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.IOUtils;

public class FileUploadController {

    public String uploadFile(HttpServletRequest request, List<InputStream> files) {
        String uploadDir = "/tmp/uploads/"; // ❌ Hardcoded path, unsafe storage
        String user = request.getParameter("user"); // ❌ No validation

        try {
            for (InputStream fileStream : files) {
                // ❌ File name not sanitized
                String fileName = request.getParameter("filename");
                File targetFile = new File(uploadDir + fileName);
                FileOutputStream out = new FileOutputStream(targetFile);
                IOUtils.copy(fileStream, out);
                out.close();
            }
            return "Upload successful";

        } catch (Exception e) {
            e.printStackTrace(); // ❌ Poor error handling
            return "Error occurred";
        }
    }

    // ❌ Dead code (unused method)
    private String getExtension(String name) {
        return name.substring(name.lastIndexOf("."));
    }
}
