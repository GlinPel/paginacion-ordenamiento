<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Ninjas pagination</title>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-6">
			    <h1>Ninjas</h1>		   
			    <c:forEach begin="1" end="${totalPages}" var="index">
			        <a href="/pages/${index}" class="btn btn-primary">${index}</a>
			    </c:forEach>
			    <table class="table table-striped">
			        <thead>
			        	<tr>
					      	<th>First Name</th>
			            	<th>Last Name</th>
					    </tr>
			        </thead>
			        <tbody>
			            <c:forEach var="ninja" items="${ninjas.content}">                 
			            <tr>
			                <td><c:out value="${ninja.firstName}"></c:out></td>
			                <td><c:out value="${ninja.lastName}"></c:out></td>
			            </tr>
			            </c:forEach>
			        </tbody>
			    </table>
			</div>
		</div>
	</div>
</body>
</html>