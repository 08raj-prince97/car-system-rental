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
		<h3 class="md-5" style="text-align: center">All Car Details</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Number</th>
					<th scope="col">Name</th>
					<th scope="col">Company</th>
					<th scope="col">Description</th>
					<th scope="col">Type</th>
					<th scope="col">Seats</th>
					<th scope="col">Price/h</th>
					<th scope='col'>Action</th>
				</tr>
			</thead>

			<tbody>

				<c:choose>
					<c:when test="${allCars.size()==0}">
						<p style="text-align: center;">No details found!!!</p>
					</c:when>

					<c:otherwise>
						<c:forEach var="i" begin="0" end="${allCars.size() -1}">

							<tr>
								<th scope="row">${i+1}</th>
								<td>${allCars[i].number}</td>
								<td>${allCars[i].name}</td>
								<td>${allCars[i].company}</td>
								<c:if test="${allCars[i].description.length() lt 40}">
									<td>${allCars[i].description}</td>
								</c:if>
								<c:if test="${allCars[i].description.length() gt 40}">
									<td>${fn:substring(allCars[i].description,0,25)}...</td>
								</c:if>
								<td>${allCars[i].type}</td>
								<td>${allCars[i].seats}</td>
								<td>${allCars[i].price}</td>
								<td><a
									href="<%=request.getContextPath()%>/EditCar?param1=${allCars[i].id}"
									class="mr-2"><i class="fas fa-edit"></i></a><span
									onclick="abc(${allCars[i].id})" style="color: red;"data-toggle="modal" data-target="#exampleModal"
									href="<%=request.getContextPath()%>/DeleteCar?param1=${allCars[i].id}"><i
										class="fas fa-trash"></i></span></td>
							</tr>

						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
		
		<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to delete this car type?
      </div>
       

      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-danger" onclick="abcd()">Delete</button>
      </div>
 
      
    </div>
  </div>
</div>
		<hr>
	</div>


	<%@include file="indexLayout2.jsp"%>



	<script>
	 function abc(value){
		 console.log("we are in abc function",value)
		 window.value=value;  
		 
	 }
	 function abcd(){
		 
		 console.log("value global",window.value)
		 location.replace("/Car_Rental_System/DeleteCar?param1="+window.value);
		 
	 }
	
	</script>

</body>
</html>