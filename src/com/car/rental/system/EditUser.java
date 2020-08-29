package com.car.rental.system;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EditUser
 */
@WebServlet("/EditUser")
public class EditUser extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("param1");

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		EditUserDao dao = new EditUserDao();

		HashMap<String, String> hmap = new HashMap<String, String>();
		ArrayList al = new ArrayList(dao.editUserDao(key));

		session.setAttribute("editUser", al);
		response.sendRedirect("editUser.jsp");
	}

}
