package com.example.springboot;

import java.io.IOException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String username = request.getParameter("email");
        String password = request.getParameter("pwd");
		Login l = new Login();
		
		
		boolean isAuthenticated = l.authenticate(username, password);
		
		if (isAuthenticated) {
            // If authentication is successful, forward to a success page
            try {
                response.sendRedirect("profile.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            // If authentication fails, forward to an error page
            try {
                response.sendRedirect("error.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
	}
}
