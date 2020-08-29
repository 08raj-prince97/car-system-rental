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

	<%@include file="indexLayout1.jsp"%>



	<c:choose>
		<c:when test="${myBookings.size()==0}">
			<p style="text-align: center;">No details found!!!</p>
		</c:when>

		<c:otherwise>

			<c:forEach var="i" begin="0" end="${cars.size()-1}">

				<div class="card mb-3" style="max-width: 1320px;">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="${cars[i].image}" class="card-img" style="height: 250px; width:350px;" alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">${cars[i].name}</h5>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Company: ${cars[i].company}</li>
									<li class="list-group-item">Seats: ${cars[i].seats}</li>
									<li class="list-group-item">Price per day:
										${cars[i].price}</li>
								</ul>
								<div class="card-body">
									<a
										href="/Car_Rental_System/bookCarForm.jsp?carId=${cars[i].id}"
										class="btn btn-outline-dark card-link">Book Car</a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>

	<%@include file="indexLayout2.jsp"%>
</body>
</html>