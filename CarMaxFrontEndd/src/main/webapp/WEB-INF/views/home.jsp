<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>
<body>
<head>
<title>frontend</title>
<%@ include file="/WEB-INF/views/header.jsp" %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body{
margin: 0 auto;
background-image:url( "resources/images/car6.jpg");
background-repeat: no-repeat;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 800px;
      height:400px;
      margin: auto;
  }
</style>
</head>
 <body>
 

<h1><STRONG><em><blink>CAR MAXXXXXX</blink></em> </h1>
<p><em>Keep Moving Forward</em></p>

 </body>
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

<div class="carousel-inner" role="listbox">
   

   <div class="item active">
      <img src="<c:url value='resources/images/car1.jpg'/>" alt"">
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/car2.jpg'/>" alt""  >
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/car3.jpg'/>" alt"">
   </div>
   
   <div class="item">
      <img src="<c:url value='resources/images/car4.jpg'/>" alt"">
   </div>
    
  

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
   
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

 
</html>



</body>
</html>