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
 * Servlet implementation class UpdateUserDetails3
 */
@WebServlet("/UpdateUserDetails2")
public class UpdateUserDetails2 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		String name = request.getParameter("name").toString();
		double mobile = Double.parseDouble(request.getParameter("mobile"));
		String id = request.getParameter("id").toString();
		String city = request.getParameter("city").toString();
		double pincode = Double.parseDouble(request.getParameter("pincode"));
		String state = request.getParameter("state").toString();
		String address = request.getParameter("address").toString();

		PrintWriter out = response.getWriter();
		String url = "jdbc:mysql://localhost:3306/car_rental_system";
		String u = "root";
		String p = "";
		String sql = "UPDATE userdetails SET name=?,mobile=?,city=?,pincode=?,state=?,address=? WHERE id=" + id;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, u, p);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setDouble(2, mobile);
			st.setString(3, city);
			st.setDouble(4, pincode);
			st.setString(5, state);
			st.setString(6, address);
			st.execute();
			con.close();

			response.sendRedirect("CustomerReport");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
