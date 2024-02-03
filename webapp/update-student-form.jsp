<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Customer</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
<style type="text/css">

body{

} 
h2{
text-align:center;
  
 
  font-size:20px;
  font-weight:bold;
 

  
  /* text-shadow: 5px 5px 4px #000000; */
}
h3 {
	font-size: 40px;
	font-weight: bold;
	color: green;
	text-align:center;
}

</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Customer Management</h2>

		</div>
	</div>
	
	<section class="vh-90 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h3 class="text-uppercase text-center mb-5">Update Student</h3>

		<form action="StudentControllerServlet" method="get">
			<input type="hidden" name="command" value="UPDATE" /> 
			<input type="hidden" name="studentid" value="${THE_STUDENT.id }" />

			<table class="table table-striped transparent">
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="firstName"
							value="${THE_STUDENT.firstName }" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="lastName"
							value="${THE_STUDENT.lastName}" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email"
							value="${THE_STUDENT.email}" /></td>
					</tr>
					<tr>
					<td><label>STREET:</label></td>
					<td><input type="text" name="street"
							value="${THE_STUDENT.street}" /></td>
					</tr>
					<tr>
					<td><label>ADDRESS:</label></td>
					<td><input type="text" name="address"
							value="${THE_STUDENT.address}" /></td>
					</tr>
					<tr>
					<td><label>CITY:</label></td>
					<td><input type="text" name="city"
							value="${THE_STUDENT.city}" /></td>
					</tr>
					<tr>
					<td><label>PHONE:</label></td>
					<td><input type="text" name="phone"
							value="${THE_STUDENT.phone}" /></td>
					</tr>
				</tbody>
			</table>
			<center><input type="submit" value="Save" class="save"  style="background:green"/></center>
		</form><br>
		<div style="clear:both;"></div>
		<center><p>
			<a href="StudentControllerServlet"><button>Back to List</button></a>
		</p></center>
	</div>
	</div>
	</div>
</div>
</div>
</div>
</section>
	
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
	
	
	
	
</body>
</html>