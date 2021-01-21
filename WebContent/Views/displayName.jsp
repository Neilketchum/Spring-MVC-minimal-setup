<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Hello 	<%= request.getAttribute("name") %>
<br> 
Heelo once again ${name}
<br>
Today Date is ${date}
<br>
Welcome to
<c:forEach var = "temp" items =  "${team}">
		${temp}
</c:forEach>

</body>
</html>