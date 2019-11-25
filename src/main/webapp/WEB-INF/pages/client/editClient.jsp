<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Edition de clients</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<fieldset>
			<legend>Edition de clients</legend>
			<c:choose>
				<c:when test="${client.getClass().simpleName == 'ClientPhysique'}">
					<c:url var="action" value="saveClientPhysique"></c:url>
				</c:when>
				<c:when test="${client.getClass().simpleName == 'ClientMoral'}">
					<c:url var="action" value="saveClientMoral"></c:url>
				</c:when>
				<c:when test="${client.getClass().simpleName == 'ClientEI'}">
					<c:url var="action" value="saveClientEI"></c:url>
				</c:when>
			</c:choose>
			<form:form action="${action}" method="post" modelAttribute="client">
				<form:hidden path="version" value="${client.version}"></form:hidden>
				<div class="form-group">
					<form:label path="id">id:</form:label>
					<form:input path="id" cssClass="form-control" readonly="true" />
				</div>
				<div class="form-group">
					<form:label path="nom">nom:</form:label>
					<form:input path="nom" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="nom">numeroTel:</form:label>
					<form:input path="nom" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="nom">numeroFax:</form:label>
					<form:input path="nom" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="nom">email:</form:label>
					<form:input path="nom" cssClass="form-control" />
				</div>
				<c:choose>
					<c:when test="${client.getClass().simpleName == 'ClientPhysique'}">
						<c:url var="action" value="saveClientPhysique"></c:url>
						<div class="form-group">
							<form:label path="titre">titrePhysique:</form:label>
							<form:input path="titre"
								cssClass="form-control" />
						</div>
					</c:when>
					<c:when test="${client.getClass().simpleName == 'ClientMoral'}">
						<c:url var="action" value="saveClientMoral"></c:url>
						<div class="form-group">
							<form:label path="titre">titreMoral:</form:label>
							<form:input path="titre" cssClass="form-control" />
						</div>
					</c:when>
					<c:when test="${client.getClass().simpleName == 'ClientEI'}">
						<c:url var="action" value="saveClientEI"></c:url>
						<div class="form-group">
							<form:label path="titre">titreEI:</form:label>
							<form:input path="titre" cssClass="form-control" />
						</div>
					</c:when>
				</c:choose>
				<div class="form-group">
					<button type="submit" class="btn btn-outline-success">enregistrer</button>
					<a href="list" class="btn btn-outline-danger">annuler</a>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>