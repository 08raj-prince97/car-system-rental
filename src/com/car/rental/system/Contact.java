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
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		
		String name=request.getParameter("name");
		System.out.println("name"+name);
		double mobile=Double.parseDouble(request.getParameter("mobile"));
		String email=request.getParameter("email");
		String subject= request.getParameter("subject");
		String message= request.getParameter("message");
		
		String to = "pk250061@gmail.com";
		Mailer.send(to, subject, message);
		
		PrintWriter out=response.getWriter();
		String url ="jdbc:mysql://localhost:3306/car_rental_system";
		String u ="root";
		String p ="";
		String sql ="INSERT INTO contactreport SET name=?,mobile=?,email=?,subject=?,message=?";
		
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection(url,u,p);
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, name);
				st.setDouble(2, mobile);
				st.setString(3, email);
				st.setString(4, subject);
				st.setString(5, message);
				st.execute();
				con.close();
											
				response.sendRedirect("index.jsp");
				
			}catch(Exception e) {
			e.printStackTrace();
			}
	}

}
