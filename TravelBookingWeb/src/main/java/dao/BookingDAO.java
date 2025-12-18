package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/travel_bookings";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Dhruv@75";

    // 🔹 Insert booking into database
    public void saveBooking(String source, String destination, String travelDate, int price) {

        String sql = "INSERT INTO bookings (source, destination, travel_date, price, status) VALUES (?, ?, ?, ?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/travel_bookings",
                    "root",
                    "Dhruv@75"
            );

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, source);
            ps.setString(2, destination);
            ps.setDate(3, java.sql.Date.valueOf(travelDate));
            ps.setInt(4, price);
            ps.setString(5, "CONFIRMED");

            ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 🔹 Fetch all bookings
    public List<String[]> getAllBookings() {

        List<String[]> bookings = new ArrayList<>();
        String sql = "SELECT source, destination, travel_date FROM bookings";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                bookings.add(new String[]{
                        rs.getString("source"),
                        rs.getString("destination"),
                        rs.getString("travel_date")
                });
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookings;
    }
}