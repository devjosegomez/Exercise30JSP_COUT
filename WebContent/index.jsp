<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <jsp:useBean id="miMensaje" class="com.exercise30.model.Mensaje"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Practice</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="./css/styles.css" />
</head>
<body>
	<h2>JSP Practice</h2>
	
	<h2>Practice1 Hello world</h2>
	<c:out value="Hola mundito"></c:out>
	
	<h2>Practice 2 Declaring variables</h2>
	<c:set var="funda" scope="application" value="100"></c:set>
	<c:out value="${funda}"></c:out>
	
	<h2>Practice 3 For each</h2>
	<c:forEach var="i" begin="1" end="1000">
		<c:out value="${i}"></c:out>
	</c:forEach>
	
	<h3>Practice 4 Forms</h3>
	 <form>
	 	<label for="txtNumber">Number</label>
	 	<input class="form-control" type="text" id="txtNumber" name="txtNumber">
	 	<input class="btn btn-primary" type="submit" value="Square the Number">
	 	The Square number is:
	 	<c:set var="square" value="${param.txtNumber * param.txtNumber}"></c:set>
	 	<c:out value="${square}"></c:out>
	 </form>
	
	<h2>Practice 5 JSP functions</h2>
	<form action="">
		<c:set var="miCadena" value="Welcome to JSP programming"></c:set>
		<c:out value="${fn:toLowerCase(miCadena)}"></c:out>
	</form>
	<hr />
	<form>
		El mensaje de mi bean es: <c:out value="${miMensaje.texto}" default="valor null"></c:out>
	</form>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="./js/script.js"></script>
	
</body>
</html>