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
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email").toString();
		String name=request.getParameter("name").toString();
		double mobile=Double.parseDouble(request.getParameter("mobile"));
		String city=request.getParameter("city").toString();
		double pincode=Double.parseDouble(request.getParameter("pincode"));
		String state=request.getParameter("state").toString();
		String address=request.getParameter("address").toString();
		
		PasswordGeneration code=new PasswordGeneration();
		String password=code.generatePassword();
		HttpSession session=request.getSession();
		String type = "user";
		String to=email; 
	    String subject="Password Generation";
	    String msg= "your password is:  "+password;	
		
		PrintWriter out=response.getWriter();
		
		String url ="jdbc:mysql://localhost:3306/car_rental_system";
		String u ="root";
		String p ="";
		String sql ="INSERT INTO userdetails(name,email,mobile,city,pincode,state,address,password,type) VALUES(?,?,?,?,?,?,?,PASSWORD(?),?)";
		
		RegisterCheck rc=new RegisterCheck();
		 if(rc.check(email)) {
			 request.setAttribute("message1", "This Email ID is Already Registered");
			 RequestDispatcher rd=request.getRequestDispatcher("addCustomer.jsp");
			 rd.forward(request, response);
		 }else {
			 try {	
				 	Mailer.send(to, subject, msg);
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection(url,u,p);
					PreparedStatement st = con.prepareStatement(sql);
					st.setString(1, name);
					st.setString(2,email);
					st.setDouble(3, mobile);
					st.setString(4, city);
					st.setDouble(5, pincode);
					st.setString(6, state);
					st.setString(7, address);
					st.setString(8,password);
					st.setString(9,type);


					 st.execute();
					con.close();	  
					request.setAttribute("success1","You have registered successfully");
					request.setAttribute("success2","Your password has been sent successfully to your email");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
		 }catch(Exception e) {
			e.printStackTrace();
			}
	}

}
}