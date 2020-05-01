<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf" %>
	
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
		
<%@ include file="../common/footer.jspf"%>