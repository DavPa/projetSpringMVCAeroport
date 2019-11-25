<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
  <title>Liste des vols</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Tableau des vols</h1>
		<div>
			<a href="addVol" class="btn btn-link">ajouter un vol</a>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>DateDepart</th>
					<th>DateArrivee</th>
					<th>HeureDepart</th>
					<th>HeureArrivee</th>
					<th>AeroportDepart</th>
					<th>AeroportArrivee</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="r" items="${vols}">
						<tr>
							<td>${p.id}</td>
							<td>${p.dateDepart}</td>
							<td>${p.dateArrivee}</td>
							<td>${p.heureDepart}</td>
							<td>${p.heureArrivee}</td>
							<td>${p.aeroportDepart}</td>
							<td>${p.aeroportArrivee}</td>
							<c:url var="edit" value="edit">
								<c:param name="id" value="${p.id}"></c:param>
							</c:url>
							<td><a href="${edit}" class="btn btn-outline-primary">modifier</a></td>
							<c:url var="delete" value="delete">
								<c:param name="id" value="${p.id}"></c:param>
							</c:url>
							<td><a href="${delete}" class="btn btn-outline-danger">supprimer</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>