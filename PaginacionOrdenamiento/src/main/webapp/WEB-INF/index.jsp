<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Dojo List</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="mt-3 mb-3">Dojo List:</h1>
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">Location:</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="dojo" items="${dojos}">
		  		<tr>
			      <td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
			    </tr>
	 		</c:forEach>
		  </tbody>
		</table>
		<div>
			<a href="/dojos/new" class="btn btn-primary">Create Dojo</a>
			<a href="ninjas/new" class="btn btn-primary">Create Ninja</a>
		</div>
	</div>
</body>
</html>