<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Edition des vols</title>
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
			<legend>Edition vols</legend>
			<form:form action="save" method="post" modelAttribute="vol">
				<div class="form-group">
					<form:label path="id">Id : </form:label>
					<form:input path="id" cssClass="for-control" readonly="true"></form:input>
				</div>
				<div class="form-group">
					<form:label path="dateDepart">DateDepart:</form:label>
					<form:input type="date" path="dateDepart" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="dateArrivee">DateArrivee:</form:label>
					<form:input type="date" path="dateArrivee" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="heureDepart">HeureDepart:</form:label>
					<form:input type="date" path="dateDepart" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="heureDepart">HeureArrivee:</form:label>
					<form:input type="date" path="dateDepart" cssClass="for-control"></form:input>
				</div>
				<div class="form-group">
					<form:label path="aeroportDepart">AeroportDepart</form:label>
					<form:input path="aeroportDepart" cssClass="for-control" readonly="true"></form:input>
				</div>
				<div class="form-group">
					<form:label path="aeroportArrivee">AeroportArrivee</form:label>
					<form:input path="aeroportArrivee" cssClass="for-control" readonly="true"></form:input>
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