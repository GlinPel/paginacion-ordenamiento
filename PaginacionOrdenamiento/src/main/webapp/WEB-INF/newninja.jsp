<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Create Ninja</title>
</head>
<body>
	<div class="container mt-5">
		<h1>New Ninja:</h1>
		<form:form method="POST" action="/ninjas/create" modelAttribute="ninja" class="mt-5 mb-5">
		<div class="form-group">
		  	<form:errors path="dojo" class="mt-3 mb-3"></form:errors>
		    <form:label path="dojo" class="mt-3 mb-3">Select dojo:</form:label>
		    <form:select path="dojo">
		    	<c:forEach var="itemdojo" items="${dojos}">
			 		<form:option value="${itemdojo}">
			    		<c:out value="${itemdojo.name}"></c:out>
			    	</form:option>
		 		</c:forEach>
		    </form:select>
		</div>
		  <div class="form-group">
		  	<form:errors path="firstName" class="mt-3 mb-3"></form:errors>
		    <form:label path="firstName" class="mt-3 mb-3">First Name:</form:label>
		    <form:input type="text" path="firstName" class="mt-3 mb-3"/>
		  </div>
		  <div class="form-group">
		  	<form:errors path="lastName" class="mt-3 mb-3"></form:errors>
		    <form:label path="lastName" class="mt-3 mb-3">Last Name:</form:label>
		    <form:input type="text" path="lastName" class="mt-3 mb-3"/>
		  </div>
		  <div class="form-group">
		  	<form:errors path="age" class="mt-3 mb-3"></form:errors>
		    <form:label path="age" class="mt-3 mb-3">Age:</form:label>
		    <form:input type="text" path="age" class="mt-3 mb-3"/>
		  </div>
		  <div>
			 <button type="submit" class="btn btn-primary">Submit</button>
			<a href="/dojos" class="btn btn-primary">Return</a>
		</div>
		</form:form>
	</div>
</body>
</html>