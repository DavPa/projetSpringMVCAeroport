<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
					<button type="submit" class="btn btn-outline-primary">enregistrer</button>
					<a href="listReservations" class="btn btn-outline-danger">annuler</a>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>