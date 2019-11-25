<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <meta charset="ISO-8859-1">
  <title>Liste des clients</title>
</head>
<body>
	<div class="container">
		<h1><spring:message code="personne.list.titre"></spring:message></h1>
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
					<th>login</th>
					<th>reservations</th>
					<th>prenom</th>
					<th>titre physique</th>
					<th>titre moral</th>
					<th>siret</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${clients}">
					<tr>
						<td>${p.getClass().simpleName}</td>
						<td>${p.id}</td>
						<td>${p.nom}</td>
						<td>${p.numeroTel}</td>
						<td>${p.numeroFax}</td>
						<td>${p.email}</td>
						<td>${p.adresse}</td>
						<td>${p.login}</td>
						<td>${p.reservations}</td>
						<td><c:if test="${p.getClass().simpleName == 'ClientEI' || p.getClass().simplename == 'ClientPhysique}">${p.prenom}</c:if></td>
						<td><c:if test="${p.getClass().simpleName == 'ClientEI' || p.getClass().simplename == 'ClientPhysique}">${p.titre}</c:if></td>
						<td><c:if test="${p.getClass().simpleName == 'ClientMoral'}">${p.titre}</c:if></td>
						<td><c:if test="${p.getClass().simpleName == 'ClientMoral'}">${p.siret}</c:if></td>
						<c:url var="edit" value="edit"><c:param name="id" value="${p.id}"></c:param></c:url>
						<td><a href="${edit}" class="btn btn-outline-primary"><spring:message code="bouton.editer"></spring:message></a></td>
						<td><a href="${edit}" class="btn btn-outline-danger"><spring:message code="bouton.supprimer"></spring:message></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>