<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<tr>

            <th>manufacturer</th>
			<th>name</th>
			<th>price</th>
</tr>

<c:forEach items="${dog}" var="lion">

<tr>
         <td>${lion.getManufacturer() }</td>
         <td>${lion.getName() }</td>
         <td>${lion.getPrice() }</td>
         
         <td>
         <a href="listPost/${lion.getId()}"><span class="glyphicon glyphicon-camera"></span></a>
         </td>
         
         
         
   </tr>
</c:forEach>
</table>
</div>
</div>

</div>

</body>
</html>