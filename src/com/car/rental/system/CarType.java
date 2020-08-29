package com.car.rental.system;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CarType
 */
@WebServlet("/CarType")
public class CarType extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "jdbc:mysql://localhost:3306/car_rental_system";
		String u = "root";
		String p = "";
		String sql = "SELECT * FROM cartype";

		try {
			ArrayList<String> arr=new ArrayList<>();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(url, u, p);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next()) {
				arr.add(rs.getString(2));
			}
			con.close();
			request.setAttribute("car_type", arr);
			RequestDispatcher rd= request.getRequestDispatcher("addCar.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}	}

}
