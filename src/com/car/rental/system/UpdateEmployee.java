package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name").toString();
		String post = request.getParameter("post").toString();
		String email = request.getParameter("email").toString();
		String mobile = request.getParameter("mobile").toString();
		String city = request.getParameter("city").toString();
		String pincode = request.getParameter("pincode").toString();
		String state = request.getParameter("state").toString();
		String address = request.getParameter("address").toString();
		String id = request.getParameter("id").toString();

		PrintWriter out = response.getWriter();

		String url = "jdbc:mysql://localhost:3306/car_rental_system";
		String u = "root";
		String p = "";
		String sql = "UPDATE employee SET name=?,post=?,email=?,mobile=?,city=?,pincode=?,state=?,address=? WHERE id="+id;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, u, p);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, post);
			st.setString(3, email);
			st.setString(4, mobile);
			st.setString(5, city);
			st.setString(6, pincode);
			st.setString(7, state);
			st.setString(8, address);
			st.execute();
			con.close();
			
			RequestDispatcher rd = request.getRequestDispatcher("EmployeeDetails");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
