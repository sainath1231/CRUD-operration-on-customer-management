<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link type="text/css" rel="stylesheet" href="css/add-student-style.css">
<style type="text/css">
body {
	background:
		url(https://img.freepik.com/free-photo/watercolor-texture_1048-5205.jpg?w=740&t=st=1701509200~exp=1701509800~hmac=dca01a7513c93c5af3f42f97b460afe9e521308639bf77da764fcfe0904becca);
	backgroud-repeat: no-repeat;
	background-size: cover;
}

h2 {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	
}

h3 {
	font-size: 40px;
	font-weight: bold;
	text-color: linear-gradient(to right, red, yellow);
}
</style>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Add Customer</h2>
		</div>

	</div>
<section class="vh-80 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h3 class="text-uppercase text-center mb-5">Add Student</h3>

		<form action="StudentControllerServlet" method="GET">
			<input type="hidden" name="command" value="ADD" />
			<table class="table table-light table-striped-columns">
            
           
				<tbody>
					<tr>
						<td><label>FIRST NAME:</label></td>
						<td><input type="text" name="firstName" /></td>
						
						
					</tr>
					<tr>
						<td><label>LAST NAME:</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>
					<tr>
						<td><label>EMAIL:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					<tr>
					<td><label>STREET:</label></td>
					<td><input type="text" name="street" /></td>
					</tr>
					<tr>
					<td><label>ADDRESS:</label></td>
					<td><input type="text" name="address" /></td>
					</tr>
					<tr>
					<td><label>CITY:</label></td>
					<td><input type="text" name="city" /></td>
					</tr>
					<tr>
					<td><label>PHONE:</label></td>
					<td><input type="text" name="phone" /></td>
					</tr>
				</tbody>
				
			</table>
			<center><input type="submit" value="Save" class="save" style="background:green" /></center>
		</form><br>
		<div style="clear: both"></div>
		<center><p>
			<a href="StudentControllerServlet"><button style="background:lightblue">Back to List</button></a></p></center>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</section>
	<!-- <div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">Select Language</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item"
						href="add-student-form.jsp?theLocale=en_US">English</a></li>
					<li><a class="dropdown-item"
						href="add-student-form.jsp?theLocale=te_TE">తెలుగు</a></li>
					<li><a class="dropdown-item"
						href="add-student-form.jsp?theLocale=hi_HI">हिंदी</a></li>
				</ul>
			</div> -->
			
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