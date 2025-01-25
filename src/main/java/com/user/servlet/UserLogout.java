package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userLogout")
public class UserLogout extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get the current session, if it exists
        HttpSession session = req.getSession(false);

        if (session != null) {
            // Invalidate the session to remove all attributes
            session.invalidate();
        }

        // Optionally set a success message (if you want to display it on the login page)
        req.setAttribute("succMsg", "User logged out successfully.");

        // Redirect the user to the login page
        resp.sendRedirect("user_login.jsp?logout=1");
    }
}