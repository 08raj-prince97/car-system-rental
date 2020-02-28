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
 * Servlet implementation class EmailRegister
 */
@WebServlet("/EmailRegister")
public class EmailRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email").toString();
		
		PasswordGeneration code=new PasswordGeneration();
		String password=code.generatePassword();
		HttpSession session=request.getSession();

		
		String to=email;  
	    String subject="OTP Verification";  
	    String msg= "your password is:  "+password;	
		
		PrintWriter out=response.getWriter();
		
		String url ="jdbc:mysql://localhost:3306/car_rental_system";
		String u ="root";
		String p ="";
		String sql ="INSERT INTO userdetails(email,password) VALUES(?,PASSWORD(?))";
		
		RegisterCheck rc=new RegisterCheck();
		 if(rc.check(email)) {
			 request.setAttribute("message1", "This Email ID is Already Registered");
			 RequestDispatcher rd=request.getRequestDispatcher("emailregister.jsp");
			 rd.forward(request, response);
		 }else {
			 try {	
				 	Mailer.send(to, subject, msg);	
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection(url,u,p);
					PreparedStatement st = con.prepareStatement(sql);
					st.setString(1, email);
					st.setString(2, password);
					st.execute();
					con.close();	  
					request.setAttribute("success1","You have registered successfully");
					request.setAttribute("success2","Your password has been sent successfully to your email");
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
		 }catch(Exception e) {
			e.printStackTrace();
			}
	}
}
}