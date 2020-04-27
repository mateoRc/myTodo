<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello from JSP</title>
<%
System.out.print(request.getParameter("name"));
java.util.Date date = new java.util.Date();
%>
</head>
<body>
<div>Current date is <%=date %></div>
<form action="/login.do" method="post">
<p><font color="red">${errorMessage}</font></p>
Enter your name: <input type="text" name="name"/>  
Enter your password: <input type="password" name="password"/>
<input type="submit"/>
</form>
</body>
</html>