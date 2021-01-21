<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Set Up</title>
<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/files/css/style.css"/>

<style>

</style>
</head>
<body>
	<h3>Submit Your Info</h3>
	<hr>
	<form:form action="displayUserInfo" modelAttribute="user">
	Name : <form:input path="name" />
		<p />
	Gender : Male :<form:radiobutton path="gender" value="male" /> 
			 Female :<form:radiobutton path="gender" value="female" />

		<p />
	Sports : <form:radiobuttons path="sports" items="${sports}" />
		<p />
	Favourite Fruit : 
		<form:select path="fruit">
			<form:option value="Apple" label="Apple"></form:option>
			<form:option value="Mango" label="Mango"></form:option>
			<form:option value="PineApple" label="Pineapple"></form:option>
		</form:select>
		</p>
	Essay:
	</p>
		<form:textarea path="essay" />
		</p>
	Visited Countries- <p></p>
	China - <form:checkbox path="visited" value="China" />
		</p>
	Australia - <form:checkbox path="visited" value="Australia" />
		</p>
	USA - <form:checkbox path="visited" value="USA" />
		</p>
	Japan - <form:checkbox path="visited" value="Japan" />
		</p>
		<input type="submit" value="Submit" />

	</form:form>

</body>
</html>