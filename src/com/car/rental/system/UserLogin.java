package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private Object name;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email").toString();
		String password=request.getParameter("pass").toString();

		UserLoginDao dao=new UserLoginDao();
		if(dao.check(email, password).get(1) == "error") {
			session.setAttribute("email", email);
			session.setAttribute("tpye", dao.check(email, password).get(0));		
			response.sendRedirect("updateuserdetails.jsp");
		}
	
		else if(dao.check(email, password).get(0)==null && dao.check(email, password).get(1) == null)
		{
			
			String name = "Sorry wrong credentials";
			request.setAttribute("error", name);
			String destination = "login.jsp";
			RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
			requestDispatcher.forward(request, response);
			
		}else {
			session.setAttribute("name", dao.check(email, password).get(1));
			session.setAttribute("email", email);
			session.setAttribute("type", dao.check(email, password).get(0));
			session.setAttribute("id", dao.check(email, password).get(2));
			
			response.sendRedirect("index.jsp");
		}
	}
}
