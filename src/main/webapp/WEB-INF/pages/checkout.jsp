<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ include file = "header.jsp" %>
   
   <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session != null) {
			if (session.getAttribute("email") == null) {			
				response.sendRedirect("login-signup.jsp");
			}
		}
	%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking details</title>
</head>
<div class="top-header">
	<div class="container">-
	<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
			
			<li class="prnt"><a href="javascript:window.print()">Print/SMS Ticket</a></li>
				
		</ul>
	</div>
</div>
  
<body>
<h1 align="center">Your tickets are booked</h1>
<form action="viewbook" method="post">
<div style="text-align:center;">
<input type="submit" value="View Tickets">
</div>
</form>
<c:if test="${not empty booklist}">
<h1 align="center">Your E-Ticket Details</h1> 
<table border="1">
<tr><td>Transaction ID</td>
<td>Passenger Name</td>
<td>Gender</td>
<td>Bus Operator</td>
<td>Source</td>
<td>Destination</td>
<td>Arrival Time</td>
<td>Departure Time</td>
<td>Ticket Fare</td>
</tr>
</table>
<table border="1">
    <c:forEach items="${booklist}" var="lists">
      <tr>
      <td><c:out value="${lists.tid}" /></td>
      <td><c:out value="${lists.pName}" /></td>
      <td><c:out value="${lists.pGender}"/></td>
      <td><c:out value="${lists.operatorName}"/></td>
      <td><c:out value="${lists.source}"/></td>
      <td><c:out value="${lists.destination}"/></td>
      <td><c:out value="${lists.arrivalTime}"/></td>
      <td><c:out value="${lists.departureTime}"/></td>
      <td><c:out value="${lists.fare}" /></td>    
    </tr>
</c:forEach>
</table>
</c:if>
<%-- 
<%@ include file = "footer.jsp" %> --%>
</body>
</html>