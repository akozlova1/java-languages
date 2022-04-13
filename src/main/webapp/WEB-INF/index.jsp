<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Languages</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Creator</th>
						<th>Version</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${languages}" var="language">
						<tr>
							<td><a href="/language/${language.id}">${language.name}</a></td>
							<td><c:out value="${language.creator}" /></td>
							<td><c:out value="${language.version}" /></td>
							<td>
								<form action="/language/delete/${language.id}" method="post">
									<input type="hidden" name="_method" value="delete"> <input
										type="submit" value="delete">
								</form> <a href="/language/edit/${language.id}">edit</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<form:form action="/languages" method="post"
				modelAttribute="language">
				<p>
					<form:label path="name">Name:</form:label>
					<form:errors path="name" />
					<form:input path="name" />
				</p>
				<p>
					<form:label path="creator">Creator:</form:label>
					<form:errors path="creator" />
					<form:input path="creator" />
				</p>
				<p>
					<form:label path="version">version:</form:label>
					<form:errors path="version" />
					<form:input path="version" />
				</p>

				<input type="submit" value="Submit" />
			</form:form>

		</div>
	</div>

</body>
</html>