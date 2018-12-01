<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page errorPage = "error.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Buses</title>
</head>
<body>
<h1>Bus Details</h1> 
<table border="1">
<tr><td>Source</td>
<td>Destination</td>
<td>Arrival Time</td>
<td>Departure Time</td>
<td>Distance (in Kms)</td>
<td>Price (in Rs.)</td>
<td>Operator Name</td>
<td>Bus Type</td>
</tr>
</table>
<table border="1">
<c:if test="${not empty msg}">
    <c:forEach items="${msg}" var="lists">
      <tr>
      <td><c:out value="${lists.source}" /></td>
      <td><c:out value="${lists.destination}" /></td>
      <td><c:out value="${lists.arrivalTime}" /></td>
      <td><c:out value="${lists.departureTime}" /></td>
      <td><c:out value="${lists.distance}" /></td>
      <td><c:out value="${lists.price}" /></td>
      <td><c:out value="${lists.operatorName}" /></td>
      <td><c:out value="${lists.operatorType}" /></td>
      
    </tr>
</c:forEach>
</c:if>
</table>
</body>
</html>