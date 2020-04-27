<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<%
System.out.print(request.getParameter("name"));
java.util.Date date = new java.util.Date();
%>
</head>
<body>
Welcome ${name}, your password is ${password}
<p>Todos: ${todos}</p>
</body>
</html>

<!-- Valid User -> welcome.jsp -->
<!-- Inalid User -> login.jsp -->