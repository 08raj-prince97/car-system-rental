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




	<%--MY ACCOUNT --%>

	<div id="myAccountPage">
		<h3 class="md-5" style="text-align: center">All Users Details</h3>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Mobile</th>
					<th scope="col">Email</th>
					<th scope="col">City</th>
					<th scope="col">Pincode</th>
					<th scope="col">Age</th>
					<th scope="col">Address</th>
					<th scope='col'>Action</th>
				</tr>
			</thead>

			<tbody>

				<c:choose>
					<c:when test="${customerDetaile.size()==0}">
						<p style="text-align: center;">No details found!!!</p>
					</c:when>

					<c:otherwise>
						<c:forEach var="i" begin="0" end="${customerDetaile.size() -1}">

							<tr>
								<th scope="row">${i+1}</th>
								<td>${customerDetaile[i].name}</td>
								<td>${customerDetaile[i].mobile}</td>
								<td>${customerDetaile[i].email}</td>
								<td>${customerDetaile[i].city}</td>
								<td>${customerDetaile[i].pincode}</td>
								<td>${customerDetaile[i].state}</td>
								<td>${customerDetaile[i].address}</td>
								<td><a
									href="<%=request.getContextPath()%>/EditUser?param1=${customerDetaile[i].id}"
									><i class="fas fa-edit"></i></a><spam onclick="abc(${customerDetaile[i].id})" style="color: red;"data-toggle="modal" data-target="#exampleModal"
									href="<%=request.getContextPath()%>/DeleteUser?param1=${customerDetaile[i].id}"><i
										class="fas fa-trash"></i></spam></td>
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
		 location.replace("/Car_Rental_System/DeleteUser?param1="+window.value);
		 
	 }
	
	</script>


</body>
</html>