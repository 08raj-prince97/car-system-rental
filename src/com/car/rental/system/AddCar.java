package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddCars
 */
@WebServlet("/AddCar")
public class AddCar extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String type = request.getParameter("carType");
		String number = request.getParameter("number");
		String description = request.getParameter("description");
		String seats = request.getParameter("seats");
		String price = request.getParameter("price");
		String image = request.getParameter("image");

		PrintWriter out = response.getWriter();
		String url = "jdbc:mysql://localhost:3306/car_rental_system";
		String u = "root";
		String p = "";
		String sql = "INSERT INTO cars(name,company,type,number,description,seats,price,image) VALUES(?,?,?,?,?,?,?,?)";

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, u, p);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, company);
			st.setString(3, type);
			st.setString(4, number);
			st.setString(5, description);
			st.setString(6, seats);
			st.setString(7, price);
			st.setString(8, image);
			st.execute();
			con.close();
			response.sendRedirect("index.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
