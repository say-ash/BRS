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
				<input class="city" type="text" name="source" placeholder="Enter source" required/>
			</div>
			<div class="bnr-left">
				<label class="inputLabel">To</label>
				<input class="city" type="text" name="destination" placeholder="Enter destination"  required=>
			</div>
				<div class="clearfix"></div>
		</div>
		<div class="ban-bottom">
			<div class="bnr-right">
				<label class="inputLabel">Date of Journey</label>
				<input type="date" name="doj" required/>
			</div>
			<div class="bnr-right">
				<label class="inputLabel">Date of Return<span class="opt">&nbsp;(Optional)</span></label>
				<input type="date" name="dor" >
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
<!---holiday---->
<div class="container">
	<div class="holiday">
		<div class="col-md-3 holiday-left animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<img src="images/4.jpg" class="img-responsive" alt="">
		</div>
		<div class="col-md-6 holiday-mid animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
		<h3> Bus Travel Holiday Packages</h3>
		<p>Private Guide and Driver in any language and in any departure date. For more information please contact us....</p>
		</div>
		<div class="col-md-3 holiday-left animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<img src="images/5.jpg" class="img-responsive" alt="">
		</div>
			<div class="clearfix"></div>
	</div>
</div>
<!--- /routes ---->
<%@ include file = "footer.jsp" %>
</body>
</html>