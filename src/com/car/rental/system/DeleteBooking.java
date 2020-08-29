package com.car.rental.system;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteBooking
 */
@WebServlet("/DeleteBooking")
public class DeleteBooking extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key=request.getParameter("param1");
		String table="bookingdetails";
		
		DeleteDao dao =new DeleteDao();
		dao.deleteDao(table, key);
		RequestDispatcher rd = request.getRequestDispatcher("AllBooking");
		rd.forward(request,response);
	}

}
