package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
//import date as java.util.Date;  
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddCar
 */
@WebServlet("/SearchCar")
public class SearchCar extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

		double fromDate = Double.parseDouble(request.getParameter("startdate"))/1000;
		double toDate = Double.parseDouble(request.getParameter("enddate"))/1000;

//		Date from_date = new Date();
//		Date to_date = new Date();
		try {
//			from_date = (Date) formatter.parse(fromDate);
//			to_date = (Date) formatter.parse(fromDate);
//			System.out.println(from_date);
//			System.out.println(from_date);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
//		
//		System.out.println("hsgh " + from_date);
//		System.out.println("hsgh " + todate);

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		SearchCarDao dao = new SearchCarDao();

		HashMap<String, String> hmap = new HashMap<String, String>();
		ArrayList al = new ArrayList(dao.carDetails(fromDate, toDate));

		session.setAttribute("cars", al);
		session.setAttribute("fromDate", fromDate);
		session.setAttribute("toDate", toDate);
		response.sendRedirect("searchCar.jsp");
	}
}
