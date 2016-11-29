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

<form action="loginenter" method="POST">
<form data-toggle="validator" role="form">
<div class="col-xs-3">

  <div class="form-group">
    <label for="inputName" class="control-label">Username</label>
    <input type="text" class="form-control" name="usr" placeholder="Cina Saffary" required>
  </div>
    <div class="form-group">
    <label for="inputPassword" class="control-label">Password</label>
    <div class="form-inline row">
 <div class="form-group col-sm-6">
        <input type="password" class="form-control" name="pwd" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
        <div class="help-block with-errors"></div>
      </div>
	  <div class="form-group">
    
      <div class="help-block with-errors"></div>
    </div>
  </div>
  <div class="form-group">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div><style>
  </style>
</form>
</form>

</body>
</html>

