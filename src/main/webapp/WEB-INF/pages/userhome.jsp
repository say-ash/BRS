<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page errorPage = "error.jsp" %> 
    <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session != null) {
			if (session.getAttribute("email") == null) {			
				response.sendRedirect("login-signup.jsp");
			}
		}
	%>
 <%@ include file = "header.jsp" %>
<!DOCTYPE HTML>
<html>
<body>
<form action="usersearch.html">
<div class="banner">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> BRS - Best in Class for Bus booking Service</h1>
	</div>
</div>
<div class="container">
	<div class="col-md-5 bann-info1 wow fadeInLeft animated" data-wow-delay=".5s">
		<i class="fa fa-columns"></i>
		<h3>WORLD'S MOST TRAVEL BRAND</h3>
	</div>
	<div class="col-md-7 bann-info wow fadeInRight animated" data-wow-delay=".5s">
		<h2>Online Tickets with Zero Booking Fees</h2>
		<div class="ban-top">
			<div class="bnr-left">
				<label class="inputLabel">From</label>
				<input class="city" type="text" name="source" list="Source" placeholder="Enter source" required/>
				
				<datalist id="Source">
  				<option value="Mumbai">
  				<option value="Pune">
  				<option value="Chennai">
				  <option value="Banglore">
				</datalist>
			</div>
			<div class="bnr-left">
				<label class="inputLabel">To</label>
				<input class="city" type="text" name="destination" list="destination" placeholder="Enter destination"  required=>
			</div>
			
				<div class="clearfix"></div>
				<datalist id="destination">
  				<option value="Mumbai">
  				<option value="Pune">
  				<option value="Chennai">
				  <option value="Banglore">
				</datalist>
		</div>
		<div class="ban-bottom">
			<div class="bnr-right">
				<label class="inputLabel">Date of Journey</label>
				<input type="date" name="doj"  id="dateofjourney" onchange="TDate()" required/>
			</div>
			<div class="bnr-right">
				<label class="inputLabel">Date of Return<span class="opt">&nbsp;(Optional)</span></label>
				<input type="date" name="dor" id="dateofreturn"  onchange="Date()">
			</div>
				<div class="clearfix"></div>
				<!---start-date-piker---->
			
			
			<!---/End-date-piker---->
		</div>
		<div class="sear">
				<button class="seabtn">Search Buses</button>
			
		</div>
	</div>
	<div class="clearfix"></div>
</div>
</form>
<!--- /rupes ---->

<!-- <script>
function TDate() {
    var UserDate = document.getElementById("dateofjourney").value;
    var ToDate = new Date();
    if (new Date(UserDate).getTime() <= ToDate.getTime()) {
          alert("The Date must be Bigger or Equal to today date");
          return false;
     }
    return true;
}
</script> -->

<!-- <script >
function Date(){
	var doj = document.getElementById("dateofjourney").value;
	var dor = document.getElementById("dateofreturn").value;
    var ToDate = new Date();
    if (new Date(doj).getTime() <= new Date(dor).getTime()) {
          alert("The Date must be ");
          return false;
     }
    return true;
	
}
</script> -->

<!--- /routes ---->
<%@ include file = "footer.jsp" %>
</body>
</html>