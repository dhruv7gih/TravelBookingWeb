package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;

@WebServlet("/viewBookings")
public class ViewBookingsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<String[]> bookings = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/travel_bookings",
                    "root",
                    "Dhruv@75"
            );

            PreparedStatement ps = con.prepareStatement(
                    "SELECT booking_id, source, destination, travel_date, price, status FROM bookings"
            );

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                bookings.add(new String[]{
                        rs.getString("booking_id"),
                        rs.getString("source"),
                        rs.getString("destination"),
                        rs.getString("travel_date"),
                        rs.getString("price"),
                        rs.getString("status")
                });
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("viewBookings.jsp").forward(request, response);
    }
}