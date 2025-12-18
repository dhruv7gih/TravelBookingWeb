package servlet;

import dao.UserDAO;
import model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // MODEL
        User user = new User(username, password);

        // DAO
        UserDAO dao = new UserDAO();

        if (dao.validate(user)) {
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}