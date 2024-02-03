<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.customer.web.jdbc.*"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Customer Management</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link type="text/css" rel="stylesheet" href="css/style.css">

<style type="text/css">

body{
background-color:black;
background-size:cover;
background-repeat:no-repeat;
}
h2{
text-align:center;
 
 
  font-size:20px;
  font-weight:bold;
  
  

  
  /* text-shadow: 5px 5px 4px #000000; */
}
}
</style>

</head>
<body>

	<div id="wrapper">
		<div id="header" >
			<h2>CRUD Application for Customer</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<!-- put new button:Add Student -->
			<input type="button" value="Add Customer" style="background:chocolate"
				onclick="window.location.href='add-student-form.jsp'; return false;"
				class="add-student-button" />
<br>
			<table class="table table-striped">
				<tr>
					<th style="color:red;text-shadow:2px 2px 5px white">First Name</th>
					<th style="color:red;text-shadow:2px 2px 5px white">Last Name</th>
					<th style="color:red;text-shadow:2px 2px 5px white">Email</th>
					<th style="color:red;text-shadow:2px 2px 5px white">Street</th>
					<th style="color:red;text-shadow:2px 2px 5px white">Address</th>
					<th style="color:red;text-shadow:2px 2px 5px white">City</th>
					<th style="color:red;text-shadow:2px 2px 5px white">Phone</th>
					
					<th style="color:red;text-shadow:2px 2px 5px white">Action</th>
				</tr>
				<c:forEach var="tempStudent" items="${STUDENT_LIST }">
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentid" value="${tempStudent.id}" />
					</c:url>

					<!-- set up a link to delete a student -->
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentid" value="${tempStudent.id }" />
					</c:url>
					<tr>
						<td>${tempStudent.firstName}</td>
						<td>${tempStudent.lastName}</td>
						<td>${tempStudent.email}</td>
						<td>${tempStudent.street}</td>
						<td>${tempStudent.address}</td>
						<td>${tempStudent.city}</td>
						<td>${tempStudent.phone}</td>
						<td><a href="${tempLink}"><button
									style="background: blue;color:white">Update</button></a> <a
							href="${deleteLink }"
							onclick="if(!(confirm('Are you sure you want to delete this cutomer?))) return false"><button
									style="background: red">Delete</button></a></td>
					</tr>
				</c:forEach>

			</table>


		</div>


	</div>

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