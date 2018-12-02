<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>



<form action="add" method="Post">

<%-- <c:if test="${not empty seatLength}"> --%>
    <%-- <c:forEach begin="1" end="${seatLength}" varStatus="loop"> --%>
    Add ${length}
    <br/>
 <%-- <c:if test="${not empty successfull}">
<div  style="font-color:green" >${successfull}</div>
</c:if> --%>
	<div class="container">  
    <label for="fname">Name</label>
    <input type="text" id="name" name="name" placeholder="Your name..">

    <label for="lname">DOB</label>
    <input type="date" id="dob" name="dob" placeholder="Your dob..">

    <label for="gender">Gender</label>
    <select id="gender" name="gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Others">Others</option>
    </select>

    <label for="address">Address</label>
    <textarea id="address" name="address" placeholder="address.." style="height:200px"></textarea>
    <input type="submit" value="Submit">
  
</div>
<%-- </c:forEach>
</c:if>--%>
 </form>
</body>
</html>
