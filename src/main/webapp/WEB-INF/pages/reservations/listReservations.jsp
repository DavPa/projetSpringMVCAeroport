<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Réservations</title>
</head>
<body>
	<div class="container">
		<h1>Tableau des réservations</h1>
		<div>
			<a href="addReservation" class="btn btn-link">ajouter une réservation</a>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Date</th>
					<th>Numéro</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="r" items="${reservationss}">
					<tr>
						<td>${r.id}</td>
						<td>${r.date_reservation}</td>
						<td>${r.numero}</td>
						<c:url var="edit" value="edit">
							<c:param name="id" value="${r.id}"></c:param>
						</c:url>
						<td><a href="${edit}" class="btn btn-outline-primary">modifier</a></td>
						<c:url var="delete" value="delete">
							<c:param name="id" value="${r.id}"></c:param>
						</c:url>
						<td><a href="${delete}" class="btn btn-outline-danger">supprimer</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>