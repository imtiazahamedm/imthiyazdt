<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
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



</style>

</head>
<body>



<form:form method="POST" commandName="mishadha" action="registering">
<div class="container">    
    <div id="signupbox" class="mainbox col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">   
    <div class="panel panel-default" >
    <div class="panel-heading">


<table>
   <tr>
        <td><form:label path="firstname">firstname</form:label></td>
        <td><form:input class ="form-control" path="firstname" /></td>
    </tr>
    <tr>
        <td><form:label path="lastname">lastname</form:label></td>
        <td><form:input  class ="form-control" path="lastname" /></td>
    </tr>
    <tr>
        <td><form:label path="username">username</form:label></td>
        <td><form:input  class ="form-control" path="username" /></td>
    </tr>
    <tr>
        <td><form:label path="password">password</form:label></td>
        <td><form:password   class ="form-control" path="password" /></td>
        
    </tr>
    <tr>
        <td><form:label path="emailid">email id</form:label></td>
        <td><form:input  class ="form-control" path="emailid" /></td>
    </tr>
    <tr>
        <td colspan="2">
           
              <button type="submit" class="btn btn-primary">Submit</button>
        </td>
    </tr>
</table>  
</div>
</div>
</form:form>

</form>
</body>
</html>
