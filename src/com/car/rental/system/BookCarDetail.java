package com.car.rental.system;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookCarDetail
 */
@WebServlet("/BookCarDetail")
public class BookCarDetail extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String from_date =session.getAttribute("fromDate").toString();
		String to_date = session.getAttribute("toDate").toString();
		String pick_address = request.getParameter("pick").toString();
		String drop_address = request.getParameter("drop").toString();
		String car_id = session.getAttribute("carId").toString();
		String user_id = session.getAttribute("id").toString();

		
		String url = "jdbc:mysql://localhost:3306/car_rental_system";
		String u = "root";
		String p = "";
		String sql = "INSERT INTO bookingdetails(from_date,to_date,pick_address,drop_address,car_id,user_id) VALUES(?,?,?,?,?,?)";

		RegisterCheck rc = new RegisterCheck();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, u, p);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, from_date);
			st.setString(2, to_date);
			st.setString(3, pick_address);
			st.setString(4, drop_address);
			st.setString(5, car_id);
			st.setString(6, user_id);
			st.execute();
			con.close();

			RequestDispatcher rd = request.getRequestDispatcher("myBookings.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
