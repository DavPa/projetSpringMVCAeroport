<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <meta charset="ISO-8859-1">
  <title>edition client</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>edition client</legend>
			<c:choose>
				<c:when test="${client.getClass().simpleName == 'ClientEI' }">
					<c:url var="action" value="saveClientEI"></c:url>
				</c:when>
				<c:when test="${client.getClass().simpleName == 'ClientMoral' }">
					<c:url var="action" value="saveClientMoral"></c:url>
				</c:when>
				<c:when test="${client.getClass().simpleName == 'ClientPhysique' }">
					<c:url var="action" value="saveClientPhysique"></c:url>
				</c:when>
			</c:choose>
			
			<form:form action="${action}" method="get" modelAttribute="client">
			<form:hidden path="Version"/>
				<div class="form-group">
					<form:label path="id">id:</form:label>
					<form:input path="id" cssClass="form-control" readonly="true"/>
				</div>
				<div class="form-group">
					<form:label path="nom">nom:</form:label>
					<form:input path="nom" cssClass="form-control" readonly="false"/>
					<form:errors path="nom" cssClass="alert alert-danger" element="div">le nom doit faire 3 caractères minimum</form:errors>
				</div>
				<div class="form-group">
					<form:label path="adresse.codePostal">numeroTel:</form:label>
					<form:input path="adresse.codePostal" cssClass="form-control"/>
					<form:errors path="adresse.codePostal" cssClass="alert alert-danger" element="div"></form:errors>
				</div>
			</form:form>
			
		</fieldset>
	</div>
</body>
</html>