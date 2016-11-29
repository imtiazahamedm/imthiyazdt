<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    <li><a href="#">AUDI</a></li> <li><a href="#">BENTELY</a></li>
    <li><a href="#">BMW</a></li>
    <li><a href="#">JAGUAR</a></li>
    <li><a href="#">LAMBORGHINI</a></li>
    <li><a href="#">MERCEDES BENZ</a></li>
    <li><a href="#">ROLLSROYALS</a></li>
    </ul>       
    <li><a href="aboutus">ABOUT US</a></li> 
</ul>
  
  <c:if test="${sessionScope.username eq null }">
 
    <ul class="nav navbar-nav navbar-right">
    <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>  
  </ul>
  </c:if>
   
  
  <c:if test="${sessionScope.username ne null }">
  <h1>Welcome,"${sessionScope.username}"</h1>
 <ul class="nav navbar-nav navbar-right">
  
  <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> logout</a></li>
   </ul>
 
  </c:if>
  

</nav>

</body>
</html>