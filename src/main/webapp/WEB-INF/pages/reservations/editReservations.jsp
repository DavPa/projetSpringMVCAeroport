<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Edition reservation</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>Edition reservation</legend>
			<form:form action="save" method="post" modelAttribute="reservation">
				<div class="form-group">
					<form:label path="id">Id : </form:label>
					<form:input path="id" cssClass="for-control" readonly="true"></form:input>
				</div>
				<div class="form-group">
					<form:label path="date_reservation">Date : </form:label>
					<form:input type="date" path="date_reservation" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="numero">Numero : </form:label>
					<form:input type="integer" path="numero" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="vol.id">Vol : </form:label>
					<form:select path="vol.id">
						<form:option value="">pas de vol</form:option>
						<form:options itemValue="id" itemLabel="info" items="${vols}"></form:options>
					</form:select>
				</div>
				<div class="form-group">
					<form:label path="passager.id">Passager : </form:label>
					<form:select path="passager.id">
						<form:option value="">pas de passager</form:option>
						<form:options itemValue="id" itemLabel="info" items="${passagers}"></form:options>
					</form:select>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-outline-primary">enregistrer</button>
					<a href="listReservations" class="btn btn-outline-danger">annuler</a>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>