<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/views/adminheader.jsp" %>
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




</style>


</head>
<body>

<div class="container">

</div>

</head>
<body>

<h2>Product Information</h2>
<form:form method="POST" commandName="productformobj" action="adminADDS">
   <table class="table table-bordered">
   
     <tr>
        <td><form:label path="category">category</form:label></td>
        <td><form:input path="category" /></td>
    </tr>
     <tr>
        <td><form:label path="description">description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>  
    <tr>
    </tr>
     <tr>
        <td><form:label path="manufacturer">manufacturer</form:label></td>
        <td><form:input path="manufacturer" /></td>
    </tr>  
    <tr>
    </tr>
     <tr>
        <td><form:label path="name">name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>  
    <tr>
    </tr>
     <tr>
        <td><form:label path="price">price</form:label></td>
        <td><form:input path="price" /></td>
    </tr> 
     <tr>
        <td><form:label path="available">available</form:label></td>
        <td><form:input path="available" /></td>
    </tr> 
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
 
 <style>
 body{
  margin: 0 auto;
  background-image: url("resources/images/car8.jpg");
  background-repeat: no-repeat;
}

</body>
</html>



