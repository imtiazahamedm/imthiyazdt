<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/product/editProduct" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editProdObj">
		<table>
		<tr>
			<td><form:label path="pid">productId</form:label></td>
			<td><form:input path="pid" disabled="true"/>
			<form:hidden path="pid" /></td>
        </tr>
        <tr>
        <td><form:label path="name">Product Name</form:label>  </td>
        <td><form:input path="name"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="price">Product Price</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	    
	      <tr>
        <td><form:label path="description">Product desc</form:label>  </td>
        <td><form:input path="description"></form:input></td>
	    </tr>
	      <tr>
        <td><form:label path="manufacturer">Product Manufacturer</form:label>  </td>
        <td><form:input path="manufacturer"></form:input></td>
	    </tr>
	      <tr>
        <td><form:label path="category">Product Category	</form:label>  </td>
        <td><form:input path="category"></form:input></td>
	    </tr>
	    
	     <tr>
	    <td colspan="2"><input type="submit" value="EditProduct"></td>
	    </tr>
		</table>
	</form:form>

</body>
</html>