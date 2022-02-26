<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Create Dojo</title>
</head>
<body>
	<div class="container mt-5">
		<h1>New Dojo:</h1>
		<form:form method="POST" action="/dojos/create" modelAttribute="dojo" class="mt-5 mb-5">
		  <div class="form-group">
		  	<form:errors path="name" class="mt-3 mb-3"></form:errors>
		    <form:label path="name" class="mt-3 mb-3">Name:</form:label>
		    <form:input type="text" path="name" class="mt-3 mb-3"/>
		  </div>
		 <div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="/dojos" class="btn btn-primary">Return</a>
		</div>
		</form:form>
	</div>
</body>
</html>