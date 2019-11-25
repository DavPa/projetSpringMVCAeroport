<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des clients</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<h1>Liste des clients</h1>
		<div>
			<a href="addClientEI" class="btn btn-link">Ajout client EI</a>
			<a href="addClientMoral" class="btn btn-link">Ajout client moral</a>
			<a href="addClientPhysique" class="btn btn-link">Ajout client physique</a>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>type</th>
					<th>id</th>
					<th>nom</th>
					<th>numeroTel</th>
					<th>numeroFax</th>
					<th>email</th>
					<th>adresse</th>
<!-- 					<th>login</th> -->
<!-- 					<th>reservations</th> -->
<!-- 					<th>prenom</th> -->
<!-- 					<th>titre physique</th> -->
<!-- 					<th>titre moral</th> -->
<!-- 					<th>siret</th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${clients}">
					<tr>
						<td>${c.getClass().simpleName}</td>
						<td>${c.id}</td>
						<td>${c.nom}</td>
						<td>${c.numeroTel}</td>
						<td>${c.numeroFax}</td>
						<td>${c.email}</td>
						<td>${c.adresse}</td>
<%-- 						<td>${c.login}</td> --%>
<%-- 						<td>${c.reservations}</td> --%>
<%-- 						<td><c:if test="${c.getClass().simpleName == 'ClientEI' || c.getClass().simplename == 'ClientPhysique}">${c.prenom}</c:if></td> --%>
<%-- 						<td><c:if test="${c.getClass().simpleName == 'ClientEI' || c.getClass().simplename == 'ClientPhysique}">${c.titre}</c:if></td> --%>
<%-- 						<td><c:if test="${c.getClass().simpleName == 'ClientMoral'}">${c.titre}</c:if></td> --%>
<%-- 						<td><c:if test="${c.getClass().simpleName == 'ClientMoral'}">${c.siret}</c:if></td> --%>
						<c:url var="edit" value="edit">
							<c:param name="id" value="${s.id}"></c:param>
						</c:url>
						<td><a href="${edit}" class="btn btn-outline-primary">modifier</a></td>
						<c:url var="delete" value="delete">
							<c:param name="id" value="${s.id}"></c:param>
						</c:url>
						<td><a href="${delete}" class="btn btn-outline-danger">supprimer</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>