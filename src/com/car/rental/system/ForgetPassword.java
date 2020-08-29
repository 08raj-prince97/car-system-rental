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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ForgetPassword
 */
@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email").toString();
		PasswordGeneration code=new PasswordGeneration();
		String password=code.generatePassword();
		HttpSession session=request.getSession();
		String to=email;  
	    String subject="Password Generation";  
	    String msg= "your new password is:  "+password;	
		
		PrintWriter out=response.getWriter();
		
		String url ="jdbc:mysql://localhost:3306/car_rental_system";
		String u ="root";
		String p ="";
		String sql ="UPDATE userdetails SET password=PASSWORD(?) WHERE id=?";
		
			 try {	
				 	Mailer.send(to, subject, msg);	
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection(url,u,p);
					PreparedStatement st = con.prepareStatement(sql);
					st.setString(1, password);
					st.setString(2, email);
					st.execute();
					con.close();	  
					request.setAttribute("success2","Your password has been sent successfully to your email");
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
		 
			 }catch(Exception e) {
				 e.printStackTrace();
			}
	}


}
