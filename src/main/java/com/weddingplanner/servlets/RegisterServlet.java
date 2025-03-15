package com.weddingplanner.servlets;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet for handling user registration
 * Creates new user records in users.json
 */
@WebServlet("/RegisterServlet") // Changed to match future AJAX path
public class RegisterServlet extends HttpServlet {
    
    private static final String USERS_FILE = "/WEB-INF/data/users.json";
    
    /**
     * Handles registration form submission
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Set response type to JSON
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        JsonObject jsonResponse = new JsonObject();
        
        try {
            // Get form parameters - match field names in register.jsp
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            
            // Generate username from email (before @ symbol) as backup
            String username = email.split("@")[0];
            
            // Validate inputs
            String errorMessage = validateInputs(username, password, confirmPassword, email);
            if (errorMessage != null) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", errorMessage);
                out.print(jsonResponse.toString());
                return;
            }
            
            // Check if email already exists
            if (isEmailTaken(email)) {
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "This email is already registered");
                out.print(jsonResponse.toString());
                return;
            }
            
            // Register the new user
            boolean success = registerUser(username, password, fullName, email, phone, "");
            
            if (success) {
                // Registration successful
                jsonResponse.addProperty("success", true);
                jsonResponse.addProperty("message", "Registration successful! You can now login.");
                jsonResponse.addProperty("redirect", request.getContextPath() + "/login.jsp");
            } else {
                // Registration failed
                jsonResponse.addProperty("success", false);
                jsonResponse.addProperty("message", "Registration failed. Please try again.");
            }
            
        } catch (Exception e) {
            // Handle any unexpected errors
            jsonResponse.addProperty("success", false);
            jsonResponse.addProperty("message", "An error occurred: " + e.getMessage());
        }
        
        out.print(jsonResponse.toString());
    }
    
    /**
     * Validates user input for registration
     * @return Error message if invalid, null if valid
     */
    private String validateInputs(String username, String password, String confirmPassword, String email) {
        if (username == null || username.trim().isEmpty()) {
            return "Username is required";
        }
        
        if (password == null || password.trim().isEmpty()) {
            return "Password is required";
        }
        
        if (!password.equals(confirmPassword)) {
            return "Passwords do not match";
        }
        
        if (email == null || email.trim().isEmpty()) {
            return "Email is required";
        }
        
        // Simple email validation
        if (!email.contains("@") || !email.contains(".")) {
            return "Invalid email format";
        }
        
        return null; // No errors found
    }
    
    /**
     * Checks if an email already exists
     */
    private boolean isEmailTaken(String email) {
        try {
            String realPath = getServletContext().getRealPath(USERS_FILE);
            File file = new File(realPath);
            if (!file.exists()) {
                return false; // File doesn't exist, so email is not taken
            }
            
            JsonArray users = JsonParser.parseReader(new FileReader(file)).getAsJsonArray();
            
            for (JsonElement element : users) {
                JsonObject user = element.getAsJsonObject();
                if (user.has("email")) {
                    String existingEmail = user.get("email").getAsString();
                    
                    if (email.equalsIgnoreCase(existingEmail)) {
                        return true; // Email already exists
                    }
                }
            }
            
            return false; // Email not found
            
        } catch (IOException e) {
            System.err.println("Error checking email: " + e.getMessage());
            return true; // Assume email is taken to prevent registration in case of errors
        }
    }
    
    /**
     * Registers a new user by adding to the users.json file
     */
    private boolean registerUser(String username, String password, String name, 
                                String email, String phone, String address) {
        try {
            String realPath = getServletContext().getRealPath(USERS_FILE);
            File file = new File(realPath);
            JsonArray users;
            
            // Create file if it doesn't exist
            if (!file.exists()) {
                File parentDir = file.getParentFile();
                if (!parentDir.exists()) {
                    parentDir.mkdirs(); // Create directories if they don't exist
                }
                users = new JsonArray();
            } else {
                users = JsonParser.parseReader(new FileReader(file)).getAsJsonArray();
            }
            
            // Get max ID for new user ID assignment
            int maxId = 0;
            for (JsonElement element : users) {
                JsonObject user = element.getAsJsonObject();
                int id = user.get("id").getAsInt();
                if (id > maxId) {
                    maxId = id;
                }
            }
            
            // Create new user object
            JsonObject newUser = new JsonObject();
            newUser.addProperty("id", maxId + 1);
            newUser.addProperty("username", username);
            newUser.addProperty("password", password);
            newUser.addProperty("name", name);
            newUser.addProperty("email", email);
            newUser.addProperty("phone", phone);
            newUser.addProperty("address", address);
            
            // Add current date as registration date
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            newUser.addProperty("registrationDate", dateFormat.format(new Date()));
            
            // Add to array and write back to file
            users.add(newUser);
            
            try (FileWriter writer = new FileWriter(file)) {
                Gson gson = new GsonBuilder().setPrettyPrinting().create();
                gson.toJson(users, writer);
                return true;
            }
            
        } catch (IOException e) {
            System.err.println("Error registering user: " + e.getMessage());
            return false;
        }
    }
    
    /**
     * Handles direct GET requests to the registration page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Show registration form
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
}