<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.User"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

 <%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="Component/Allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>


	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
	<div class="row">
		<div class="col-md-6 d-flex justify-content-center align-items-center">
			<img alt="doctor" src="img/doc4.jpg" class="img-fluid"
				style="max-width: 100%; height: auto;">
		</div>

		<div class="col-md-6">
			<div class="card paint-card">
				<div class="card-body">
					<p class="text-center fs-3">User Appointment</p>


					<%
					// Check if an error message exists in the session
					if (session.getAttribute("errorMsg") != null) {
					%>
					<p class="fs-4 text-center text-danger">
						<%=session.getAttribute("errorMsg")%>
					</p>
					<%
					// Remove the errorMsg attribute after displaying it
					session.removeAttribute("errorMsg");
					%>
					<%
					} else if (session.getAttribute("succMsg") != null) {
					%>
					<p class="fs-4 text-center text-success">
						<%=session.getAttribute("succMsg")%>
					</p>
					<%
					// Remove the succMsg attribute after displaying it
					session.removeAttribute("succMsg");
					%>
					<%
					}
					%>
						<form class="row g-3" action="appAppointment" method="post">

							<%
							User user = (User) session.getAttribute("username");
							int userId = 0;
							if (user != null) {
								userId = user.getId();
							}
							%>
							<input type="hidden" name="userid" value="<%=userId%>">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label> <input
									required type="number" class="form-control" name="age">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> <input type="date" class="form-control" required
									name="appoint_date">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>
								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>

							<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>

						</form>
					</div>
			</div>
		</div>
	</div>

	</div>
	

</body>
</html>