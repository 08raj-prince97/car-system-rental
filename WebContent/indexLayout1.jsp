

<div class="wrapper">
	<!-- Sidebar Holder -->
	<nav id="sidebar">
		<div class="sidebar-header">
			<h3>Car Rental System</h3>
		</div>

		<ul class="list-unstyled components">


			<c:choose>
				<c:when test="${type=='admin'}">

					<li><a href="/Car_Rental_System/index.jsp"><i
							class="fas fa-home"></i> Home</a></li>
					<li><a href="<%=request.getContextPath()%>/CarType"><i
							class="fas fa-car"></i>Add Car</a></li>
					<li><a href="/Car_Rental_System/addCarType.jsp"><i
							class="fas fa-align-justify"></i>Add Car Type</a></li>
					<li><a href="/Car_Rental_System/addCustomer.jsp"><i
							class="fas fa-user"></i>Add User</a></li>
					<li><a href="/Car_Rental_System/addEmployee.jsp"><i
							class="fas fa-user"></i>Add Employee</a></li>

					<li><a href="<%=request.getContextPath()%>/AllCars"><i
							class="fas fa-align-justify"></i>Cars</a></li>
					<li><a href="<%=request.getContextPath()%>/CarTypes"><i
							class="fas fa-align-justify"></i>Car Types</a></li>
					<li><a href="<%=request.getContextPath()%>/AllBooking"><i
							class="fas fa-align-justify"></i>Booking Details</a></li>
					<li><a href="<%=request.getContextPath()%>/CustomerReport"><i
							class="fas fa-users"></i>Users </a></li>
					<li><a href="<%=request.getContextPath()%>/EmployeeDetails"><i
							class="fas fa-users"></i>Employees</a></li>
					<li><a href="<%=request.getContextPath()%>/UserMyAccount"><i
							class="fas fa-user-alt"></i>My Accounts</a></li>
					<li><a href="<%=request.getContextPath()%>/ContactReport"><i
							class="fas fa-align-justify"></i>Contacts</a></li>

					<li><a href="/Car_Rental_System/changePassword.jsp"><i
							class="fas fa-user"></i>Change Password</a></li>
				</c:when>

				<c:when test="${type=='user'}">
					<li><a href="/Car_Rental_System/index.jsp"><i
							class="fas fa-home"></i>Home</a></li>
					<li><a href="/Car_Rental_System/bookcar.jsp"><i
							class="fas fa-align-justify"></i>Book Car</a></li>
					<li><a href="<%=request.getContextPath()%>/MyBookings"><i
							class="fas fa-align-justify"></i>My Bookings</a></li>
					<li><a href="<%=request.getContextPath()%>/UserMyAccount"><i
							class="fas fa-user"></i>My Accounts</a></li>
					<li><a href="/Car_Rental_System/changePassword.jsp"><i
							class="fas fa-user"></i>Change Password</a></li>
					<li><a href="<%=request.getContextPath()%>/UserContact"><i
							class="fas fa-align-justify"></i>Contact</a></li>
				</c:when>


				<c:otherwise>
					<li><a href="/Car_Rental_System/index.jsp"><i
							class="fas fa-home"></i> Home</a></li>
					<li><a href="/Car_Rental_System/about.jsp"><i
							class="fas fa-align-justify"></i>About</a></li>
					<li><a href="/Car_Rental_System/bookcar.jsp"><i
							class="fas fa-align-justify"></i>Book Car</a></li>
					<li><a href="/Car_Rental_System/contact.jsp"><i
							class="fas fa-align-justify"></i>Contact</a></li>
				</c:otherwise>

			</c:choose>
		</ul>
	</nav>



	<div id="content">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>
				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-align-justify"></i>
				</button>


				<c:choose>
					<c:when test="${type =='admin' || type == 'user'}">

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="nav navbar-nav ml-auto">
								<li class="nav-item active"><a class="nav-link"
									href="<%=request.getContextPath()%>/UserLogout">Sign Out</a></li>

							</ul>
						</div>
					</c:when>

					<c:otherwise>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="nav navbar-nav ml-auto">
								<li class="nav-item active"><a class="nav-link"
									href="/Car_Rental_System/emailregister.jsp">Sign Up</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="/Car_Rental_System/login.jsp">Sign In</a></li>
							</ul>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</nav>