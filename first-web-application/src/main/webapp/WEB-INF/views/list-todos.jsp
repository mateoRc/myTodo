<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf" %>
	
		<div class="container">
		<H1>Welcome ${name}</H1>
		<p>Your Todo's are:</p>
		<table class="table table-striped">
			<thead>
				<th>Description</th>
				<th>Category</th>
				<th></th>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.name}</td>
						<td>${todo.category}</td>
						<td><a class="btn btn-danger" href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></li></td>
					</tr>
				</c:forEach>
			</tbody>	
		</table>
		
		<a class="btn btn-success" href="/add-todo.do">Add New Todo</a>
		</div>
		
<%@ include file="../common/footer.jspf"%>