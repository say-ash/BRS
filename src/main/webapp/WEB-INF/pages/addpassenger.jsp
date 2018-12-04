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
 .alert {
    padding: 20px;
    background-color: green;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
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

} 
</style>
</head>
<body>

<form action="add" method="Post">
 <c:if test="${not empty successfull}">
<div class="alert">
 <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
${successfull}</div>
</c:if> 
   <c:if test="${length > 0 }">
   
    <div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong></strong>  Add ${length} Passenger Details
</div>
    
    <br/>
	<div class="container">  
    <label for="fname">Name</label>
    <input type="text" id="name" name="name" placeholder="Your name..">

    <label for="lname">DOB</label>
    <input type="date" id="dob" name="dob" placeholder="Your dob..">
<br><br>
    <label for="gender">Gender</label>
    <select id="gender" name="gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Others">Others</option>
    </select>

    <label for="address">Address</label>
    <textarea id="address" name="address" placeholder="address.." style="height:200px"></textarea>
    <input type="submit" value="Submit">
    <input type="hidden" name="l" value=${length}>
  
</div>
</c:if>
 </form>
<c:if test="${length == 0}">
<form action="confirmseat" method="post">
<div style="text-align:center;">
<input type="submit" value="Pay Now">
</div>
</form>
</c:if>
<%@ include file = "footer.jsp" %>

</body>
</html>
