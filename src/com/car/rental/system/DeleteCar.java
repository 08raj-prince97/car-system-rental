package com.car.rental.system;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/DeleteCar")
public class DeleteCar extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String key=request.getParameter("param1");
		String table="cars";
		
		DeleteDao dao =new DeleteDao();
		dao.deleteDao(table, key);
		RequestDispatcher rd = request.getRequestDispatcher("AllCars");
		rd.forward(request,response);
	}
}
