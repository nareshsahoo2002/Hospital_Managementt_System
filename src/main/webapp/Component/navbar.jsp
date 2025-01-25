
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fas fa-clinic-medical"></i> MEDI HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			

   <%
   // Fetch the current session without creating a new one
   HttpSession session1 = request.getSession(false);

   // Initialize variables for the user's full name
   String fullName = "";

   // Check if the session is valid and contains the "username" attribute
   if (session != null && session.getAttribute("username") != null) {
       // Retrieve the User object from the session
       com.entity.User user = (com.entity.User) session.getAttribute("username");
       // Extract the full name from the User object
       fullName = user.getFullName(); // Assuming getFullName() method exists in the User entity class
%>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="view_appointment.jsp">VIEW APPOINTMENT</a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" 
           role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <%= fullName %> <!-- Print the user's full name here -->
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
           
            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
        </ul>
    </li>
<%
   } else {
%>
  <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fas fa-sign-in-alt"></i> ADMIN</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="user_login.jsp">USER</a>
    </li>
  </ul> 
<%
   }
%>
			
	               
           


			
		</div>
	</div>
</nav>