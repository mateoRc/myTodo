<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 60px;
		background-color: #f5f5f5;
	}
</style>
</head>

	<body>
	
		<nav class="navbar navbar-default">
	
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li><a href="/list-todo.do">Todos</a></li>
			</ul>
	
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="/login.do">Login</a></li>
			</ul>
	
		</nav>
	
		<div class="container">
		<form action="/login.do" method="post">
		<p><font color="red">${errorMessage}</font></p>
			<ul style="list-style: none;">
				<li style="margin: 10px 0">Enter your name: <input type="text" name="name"/></li> 
				<li style="margin: 10px 0">Enter your password: <input type="password" name="password"/></li>
				<li style="margin: 10px 0"><input type="submit"/></li>
			</ul>
		</form>
		</div>
		
		<footer class="footer">
			<p>footer content</p>
		</footer>
		
		
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	</body>

</html>





