<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    background-image: url("bgscroll-gray.jpg");
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
     <marquee>
    <img src="images/webcam.jpg" class="img-circle" alt="Webcam" width="75" height="50"> &nbsp;&nbsp;
    <ul class="nav navbar-nav">
      <li><img src="images/led-apple.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
     <li> <img src="images/laptop-apple.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/cpu-apple2.png" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/aps-winrar.png" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      
      <li> <h3 style="color:white"> Grab Your Gadget </h3> </li>
      <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/keyboard-split.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/motherboard-intel1.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/cddvdrom.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/comp-access.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
      <li><img src="images/laptop-lenovo-split.jpg" class="img-circle" alt="Apple" width="75" height="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
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
    <a class="navbar-brand" href="Home"><img src="images/homelogo.jpg" class="img-circle" alt="Webcam" width="75" height="50"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Monitors<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="LedMonitors">LED Monitors</a></li>
          <li><a href="LcdMonitors">LCD Monitors</a></li>
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CPU's<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Assembled</a></li>
          <li><a href="#">Company Brands</a></li>
        </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lap tops<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Apple</a></li>
          <li><a href="#">Dell</a></li>
          <li><a href="#">Hp</a></li>
          <li><a href="#">Lenovo</a></li>
        </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Keyboards</a></li>
          <li><a href="#">Mouse</a></li>
          <li><a href="#">Speakers</a></li>
          <li><a href="#">Head sets</a></li>
          <li><a href="#">Web Cams</a></li>
        </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Softwares<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AppSoftwares">Application Softwares</a></li>
          <li><a href="#">Windows OS (Licensed)</a></li>
        </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hardwares<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Motherboards</a></li>
          <li><a href="#">Printers</a></li>
          <li><a href="#">CD/DVD-ROM</a></li>
          <li><a href="#">Processors</a></li>
        </ul>
      </li>
     
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <c:choose>
    <c:when test="${empty loggedInUser}">
      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></c:when>
      
      <c:when test="${!empty loggedInUser}">
      
      <li><a href="Registration"><li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">MyAccount<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">My Profile</a></li></a></li></ul></li>
      <li><a href="Hello"><span class="glyphicon glyphicon-log-out"></span>Sign out</a></li>
      </c:when>
      </c:choose>
    </ul>
    <form class="navbar-form">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Find here">
      </div>
      <button type="submit" class="btn btn-default">Search</button>
      
    </form>
  </div>
</nav>

</body>
</html>