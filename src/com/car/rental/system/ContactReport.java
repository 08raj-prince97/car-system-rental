package com.car.rental.system;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContactReport
 */
@WebServlet("/ContactReport")
public class ContactReport extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();	
		ContactReportDao dao = new ContactReportDao();
		HashMap<String, String> hmap = new HashMap<String, String>();
		ArrayList arr = new ArrayList(dao.userDetails());
		session.setAttribute("datas", arr);
		response.sendRedirect("contactreportview.jsp");
	}

}
