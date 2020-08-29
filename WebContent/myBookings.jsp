<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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



	<div id="myAccountPage">
		<h3 class="md-5" style="text-align: center">All Booking Details</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">name</th>
					<th scope="col">email</th>
					<th scope="col">mobile</th>
					<th scope="col">from_date</th>
					<th scope="col">to_date</th>
					<th scope="col">pick_address</th>
					<th scope="col">drop_address</th>
				</tr>
			</thead>

			<tbody>

				<c:choose>
					<c:when test="${myBookings.size()==0}">
						<p style="text-align: center;">No details found!!!</p>
					</c:when>

					<c:otherwise>
						<c:forEach var="i" begin="0" end="${myBookings.size() -1}">

							<tr>
								<th scope="row">${i+1}</th>
								<td>${myBookings[i].name}</td>
								<td>${myBookings[i].email}</td>
								<td>${myBookings[i].mobile}</td>
								<td>${myBookings[i].from_date}</td>
								<td>${myBookings[i].to_date}</td>

								<c:if test="${myBookings[i].pick_address.length() lt 40}">
									<td>${myBookings[i].pick_address}</td>
								</c:if>
								<c:if test="${myBookings[i].pick_address.length() gt 40}">
									<td>${fn:substring(myBookings[i].pick_address,0,25)}.....</td>
								</c:if>

								<c:if test="${myBookings[i].drop_address.length() lt 40}">
									<td>${myBookings[i].drop_address}</td>
								</c:if>
								<c:if test="${myBookings[i].drop_address.length() gt 40}">
									<td>${fn:substring(myBookings[i].drop_address,0,25)}.....</td>
								</c:if>

							</tr>

						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<hr>
	</div>

	<%@include file="indexLayout2.jsp"%>

</body>
</html>