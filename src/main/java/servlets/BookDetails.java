package servlets;

import java.io.IOException;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Booking;


@WebServlet("/book")
public class BookDetails extends HttpServlet{
	 public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
		 	Booking.flight_id  = req.getParameter("flight_id");
		 	Booking.flight_name = req.getParameter("flight_name");
		 	Booking.ticket_price = Float.parseFloat(req.getParameter("ticket_price"));
		 	
            resp.sendRedirect("booking-details.jsp");
	        
	    }

	    
}
