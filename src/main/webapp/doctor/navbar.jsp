
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
<%
    // Fetch the session and retrieve the doctor object
    HttpSession session3 = request.getSession(false);
    String fullName = "";
    if (session != null && session.getAttribute("doctObj") != null) {
        // Cast the session attribute to the expected Doctor object
        com.entity.Doctor doctor = (com.entity.Doctor) session.getAttribute("doctObj");
        fullName = doctor.getFullName(); // Assuming the getFullName method exists
    }
%>
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fas fa-clinic-medical"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link" href="patient.jsp">PATIENT</a></li>
			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fas fa-user-circle"></i> <%= fullName %>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						
						<li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>