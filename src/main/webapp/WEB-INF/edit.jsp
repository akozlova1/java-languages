<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isErrorPage="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div>
			<form action="/language/delete/${language.id}" method="post">
				<input type="hidden" name="_method" value="delete"> <input
					type="submit" value="delete">
			</form>
			<p>
				<a href="/languages">Dashboard</a>
			</p>
		</div>

		<div>
			<form:form action="/language/edit/${language.id}" method="post"
				modelAttribute="language">
				<input type="hidden" name="_method" value="put">
				<p>
					<form:label path="name">Name</form:label>
					<form:errors class="text-danger" path="name" />
					<form:input path="name" />
				</p>
				<p>
					<form:label path="creator">Creator</form:label>
					<form:errors class="text-danger" path="creator" />
					<form:input path="creator" />
				</p>
				<p>
					<form:label path="version">Version</form:label>
					<form:errors class="text-danger" path="version" />
					<form:input path="version" />
				</p>
				<input type="submit" value="Submit" />
			</form:form>
		</div>

	</div>

</body>
</html>