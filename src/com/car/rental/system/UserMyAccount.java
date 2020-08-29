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
@WebServlet("/UserMyAccount")
public class UserMyAccount extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String email = session.getAttribute("email").toString();
		UserMyAccountDao dao = new UserMyAccountDao();

		HashMap<String, String> hmap = new HashMap<String, String>();
		ArrayList al = new ArrayList(dao.userDetails(email));

		session.setAttribute("datas", al);
		session.setAttribute("uname", email);
		response.sendRedirect("userMyAccount.jsp");
	}

}
