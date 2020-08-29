<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<%@include file="bootStrapLink.jsp"%>
<%@include file="indexLayoutLink.jsp"%>


</head>
<body>


	<%
		response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	%>

	<%@include file="indexLayout1.jsp"%>


	<form method="post" action="AddCarType">
		<h6 class="mt-5" style="text-align: center;">Car Type Entry</h6>
		<hr>

		<div class="container mt-4">

			<div class="form-group">
				<label for="exampleInputAddress">Car Type*</label> <input
					type="text" class="form-control" id="exampleInputAddress"
					placeholder="Enter type" required name="carType">
			</div>

			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>




	<%@include file="indexLayout2.jsp"%>


</body>
</html>