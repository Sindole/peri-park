<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	font-family: 'Segoe Print';
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top navabar navbar-responsive">
	<div class="container-fluid">
		<marquee>
			<img src="images/webcam.jpg" class="img-circle" alt="Webcam"
				width="75" height="50"> &nbsp;&nbsp;
			<ul class="nav navbar-nav">
				<li><img src="images/led-apple.jpg" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/laptop-apple.jpg" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/cpu-apple2.png" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/aps-winrar.png" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

				<li>
					<h3 style="color: white">Grab Your Gadget</h3>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
					src="images/keyboard-split.jpg" class="img-circle" alt="Apple"
					width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</li>
				<li><img src="images/motherboard-intel1.jpg" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/cddvdrom.jpg" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/comp-access.jpg" class="img-circle"
					alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><img src="images/laptop-lenovo-split.jpg"
					class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			</ul>
		</marquee>
	</div>
	</nav>
	<br>
	<br>
	<br>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="Home"><img
				src="images/homelogo.jpg" class="img-circle" alt="Webcam" width="75"
				height="50"></a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>
			<c:forEach items="${categoryList}" var="category">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">${category.catname}<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ProductsPage">${category.subcatname}</a></li>
						<li><a href="ProductsPage">${category.subcatname2}</a></li>
					</ul></li>
			</c:forEach>
		</ul>

		<form class="navbar-form navbar-left">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Find here"
					id="txt" />
			</div>
			<button type="submit" class="btn btn-default">Search</button>

		</form>

		<ul class="nav navbar-nav navbar-right">
			<c:choose>
				<c:when test="${empty LoggedInUser}">
					<li><a href="Registration"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="Login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:when>

				<c:when test="${!empty LoggedInUser}">
					<!-- If user is Logged in, he has to see this -->
					<li class="dropdown" style="font-size: 120%"><a
						class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome
							${LoggedInUser}!<span class="glyphicon glyphicon-user"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="MyAccount">My Account</a></li>
							<li><a href="#">My Orders</a></li>
							<li><a href="#">Settings</a></li>
							<li><a href="perform_logout">Sign out</a></li>
						</ul></li>
					<li><a href="Cart">My-Cart<span
							class="glyphicon glyphicon-shopping-cart"></span></a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
	</nav>
</body>
</html>