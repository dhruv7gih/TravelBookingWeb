package servlet;

import dao.BookingDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/bookTravel")
public class BookTravelServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ⿡ Form se data lena (names MUST match book.jsp)
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String travelDate = request.getParameter("travelDate");
        int price = Integer.parseInt(request.getParameter("price"));

        // ⿢ DAO object
        BookingDAO bookingDAO = new BookingDAO();

        // ⿣ Database me booking save
        bookingDAO.saveBooking(source, destination, travelDate, price);

        // ⿤ Success ke baad View Bookings page
        response.sendRedirect("viewBookings");
    }
}