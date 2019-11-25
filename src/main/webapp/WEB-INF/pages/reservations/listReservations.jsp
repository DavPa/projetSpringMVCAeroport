<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <title>Liste des réservations</title>
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
					<th>Vol</th>
					<th>Passager</th>
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
						<td>${r.vol.id}</td>
						<td>${r.passager.id}</td>
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