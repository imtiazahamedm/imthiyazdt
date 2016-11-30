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
    
    <li ><a href="adminAdd"><span class="glyphicon glyphicon-add"></span>add product</a></li>
     <li><a href="listproducts"><span class="glyphicon glyphicon-view"></span>view product</a></li>
</ul>

<c:if test="${sessionScope.username ne null}">
<ul class="nav navbar-nav navbar-right">
<h1>Welcome,"${sessionScope.username}"</h1>
    <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>  
  </c:if>
</ul>
</div>
</nav>

</body>
</html>