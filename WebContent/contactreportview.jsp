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
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);

		}
	%>



	<%@include file="indexLayout1.jsp"%>


	`
	<%--MY ACCOUNT --%>



	<div id="myAccountPage">
		<h3 class="md-5" style="text-align: center">All Contacts</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Mobile</th>
					<th scope="col">Email</th>
					<th scope="col">Subject</th>
					<th scope="col">Message</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="i" begin="0" end="${datas.size() -1}">

					<tr>
						<th scope="row">${i+1}</th>
						<td>${datas[i].name}</td>
						<td>${datas[i].mobile}</td>
						<td>${datas[i].email}</td>
						<td>${datas[i].subject}</td>
						<c:if test="${datas[i].message.length() lt 25}">
							<td>${datas[i].message}</td>
						</c:if>
						<c:if test="${datas[i].message.length() gt 25}">
							<td>${fn:substring(datas[i].message,0,25)}...<span
								style="cursor: pointer;"><strong>more</strong></span></td>
						</c:if>
					</tr>

				</c:forEach>

			</tbody>
		</table>
		<hr>
	</div>


	<%@include file="indexLayout2.jsp"%>





</body>
</html>