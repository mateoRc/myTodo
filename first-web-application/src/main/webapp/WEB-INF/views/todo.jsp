<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo's</title>
<%
java.util.Date date = new java.util.Date();
%>
</head>
<body>
<p>Your Todo's are:</p>
<ol>
	<c:forEach items="${todos}" var="todo">
		<li>${todo.name}</li>
		</c:forEach>
	
	
</ol>
</body>
</html>

<!-- Valid User -> welcome.jsp -->
<!-- Inalid User -> login.jsp -->