<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>${dojo.name} Dojo</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="mt-3 mb-3"><c:out value="${dojo.name}"/> Location Ninjas:</h1>
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>
		      <th scope="col">Age</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="ninja" items="${dojo.ninjas}">
		  		<tr>
			      <td>${ninja.firstName}</td>
			      <td>${ninja.lastName}</td>
			      <td>${ninja.age}</td>
			    </tr>
	 		</c:forEach>
		  </tbody>
		</table>
		<div>
			<a href="/dojos" class="btn btn-primary">Return</a>
		</div>
	</div>
</body>
</html>