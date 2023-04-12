<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/main.css"/>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script> 
<meta charset="ISO-8859-1">
<title>All Books</title>
</head>
<body>
	 <table  class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Book Title</th>
					<th scope="col">Number of Pages</th>
					<th scope="col">Language</th>
					<th scope="col">Description</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${allBooks}">
					<tr class="table-primary">
						<td> <a href="/books/${book.id}"><c:out value="${book.title}"/></a></td>
						<td><c:out value="${book.numberOfPages}"/></td>
						<td><c:out value="${book.language}"/></td>
						<td><c:out value="${book.description}"/></td>
						 <td>
							<form action="/books" method="post">
								<input type="hidden" name="_method" value="delete">
							    <input type="submit" value="Delete">
							</form>
						</td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>