
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
 * Servlet implementation class UpdateUserDetails
 */
@WebServlet("/UserChangePassword")
public class UserChangePassword extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession();
			
			String oldpassword=request.getParameter("oldpassword").toString();
			String newpassword=request.getParameter("password2").toString();
			String email=session.getAttribute("email").toString();
			
			PrintWriter out=response.getWriter();
			String url ="jdbc:mysql://localhost:3306/car_rental_system";
			String u ="root";
			String p ="";
			String sql ="UPDATE userdetails SET password=PASSWORD(?) WHERE email=?";
			UserLoginDao dao=new UserLoginDao();

			if(dao.check(email, oldpassword).get(0)==null && dao.check(email, oldpassword).get(1) == null)
			{
				
				String error = "Sorry wrong credentials";
				request.setAttribute("error", error);
				String destination = "changePassword.jsp";
				RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
				requestDispatcher.forward(request, response);
				
			}else {
				try {

					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection(url,u,p);
					PreparedStatement st = con.prepareStatement(sql);
					st.setString(1, newpassword);
					st.setString(2, email);
					st.execute();
					con.close();
					
					session.setAttribute("passwordMessage", "Your password has been changed successfully! Thank you ...");
					response.sendRedirect("index.jsp");
				
				}catch(Exception e) {
				e.printStackTrace();
				}
			}
			}
}
