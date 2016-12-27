<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CARMAX</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"></a>
</div>
   
<ul class="nav navbar-nav">
    <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
  <ul class="dropdown-menu">
    <li><a href="categories?car=AUDI">AUDI</a></li> 
    <li><a href="categories?car=BMW">BMW</a></li>
    <li><a href="categories?car=JAGUAR">JAGUAR</a></li>
    <li><a href="categories?car=LAMBORGHINI">LAMBORGHINI</a></li>
    <li><a href="categories?car=MERCEDES BENZ">MERCEDES BENZ</a></li>
    <li><a href="categories?car=ROLCEROYCE">ROLCEROYCE</a></li>
    </ul>
    <li><a href="aboutus">ABOUT US</a></li> 
    
    </ul>
    
  <c:if test="${sessionScope.username == null}">
  
    <ul class="nav navbar-nav navbar-right">
    <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>  
  </ul>
  </c:if>
   
   <c:if test="${sessionScope.username != null}">
   <ul class="nav navbar-nav navbar-right">
   <h1>Welcome,"${sessionScope.username}"</h1>
   <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
   </ul>
 </c:if>
 
</div>
</nav>

</body>
</html>