<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf" %>
	
		<div class="container">
		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.name} &nbsp; &nbsp; <a href="/delete-todo.do?todo=${todo.name}">Delete</a></li>
				</c:forEach>
		</ol>
		<div class="container">
		<p>Add new Todo:</p>
			<form action="/add-todo.do" method="post">
					<fieldset class="form-group">
						<label>Description: </label><input class="form-control" type="text" name="todo"/> <BR/>
					</fieldset>
					<fieldset class="form-group">
						<label>Category: </label><input class="form-control" type="text" name="category"/> <BR/>
					</fieldset>
					<input class="btn btn-success" type="submit" value="Submit"/>
			</form>
		</div>
		</div>
		
<%@ include file="../common/footer.jspf"%>
