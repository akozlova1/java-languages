<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<p>
			<a href="/languages">Dashboard</a>
		</p>
		<p>
			<c:out value="${language.name}" />
		</p>
		<p>
			<c:out value="${language.creator}" />
		</p>
		<p>
			<c:out value="${language.version}" />
		</p>
		<form action="/language/delete/${language.id}" method="post">
			<input type="hidden" name="_method" value="delete"> <input
				type="submit" value="delete">
		</form>
		<a href="/language/edit/${language.id}">edit</a>
	</div>

</body>
</html>