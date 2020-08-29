package com.car.rental.system;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class AddCarType
 */
@WebServlet("/AddCarType")
public class AddCarType extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String car_type=request.getParameter("carType");
		
		String url="jdbc:mysql://localhost:3306/car_rental_system";
		String u="root";
		String p="";
		String sql="INSERT INTO cartype(type) VALUES(?)";
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection(url,u,p);
		PreparedStatement st= (PreparedStatement) con.prepareStatement(sql);
		st.setString(1, car_type);
		st.execute();
		con.close();
		response.sendRedirect("CarTypes");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
