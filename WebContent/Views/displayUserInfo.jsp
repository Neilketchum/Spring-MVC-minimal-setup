<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/files/css/style.css"/>
<meta charset="ISO-8859-1">
<title>User Info</title>
</head>
<body>
	Name - ${user.name }
	<p />
	Gender - ${user.gender}
	<p />
	Sports - ${user.sports}
	<p />
	Fruit - ${user.fruit }
	<p />
	Small Essay - ${user.essay}
	<p />
	Countries Visited
	<c:forEach items="${user.visited}" var="item">
		<li>${item}</li>
		
	</c:forEach>
</body>
</html>