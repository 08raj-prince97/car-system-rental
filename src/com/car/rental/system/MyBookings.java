package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyBookings
 */
@WebServlet("/MyBookings")
public class MyBookings extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		double user_id = Double.parseDouble(session.getAttribute("id").toString());
		MyBookingsDao dao = new MyBookingsDao();

		HashMap<String, String> hmap = new HashMap<String, String>();
		ArrayList al = new ArrayList(dao.myBookings(user_id));

		session.setAttribute("myBookings", al);
		response.sendRedirect("myBookings.jsp");
	}

}
