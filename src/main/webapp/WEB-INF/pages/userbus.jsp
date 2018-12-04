<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
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
<script type="text/javascript">
		history.pushState(null,null,location.href);
		window.onpopstate = function(){
			history.go(1);
		};
	</script>
<body>
<!--- banner-1 ---->
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> BRS - Best in Class for Bus booking</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- bus-tp ---->

<div class="bus-tp">
	<div class="container">
		<h2>Buses from ${msg1} to ${msg2}</h2>
		<div class="clearfix"></div>
	</div>
</div>

<!--- /bus-tp ---->
<!--- bus-btm ---->

<div class="bus-btm">
	<div class="container">
		<ul>
			<li class="trav">Travels</li>
			<li class="arriv">Arrive</li>
			<li class="dept">Depart</li>
			<li class="seat">Distance</li>
			<li class="fare">Fare</li>
			<div class="clearfix"></div>
		</ul>
	</div>
</div>
<!--- /bus-btm ---->
<!--- bus-midd ---->
<c:if test="${not empty msg}">
    <c:forEach items="${msg}" var="lists">
<div class="bus-midd wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
	<div class="container">
	<!--- ul-first  ---->
	
		<ul class="first">
			<li class="trav">
				<div class="bus-ic">
					<img src="images/bus.png" class="img-responsive" alt="">
				</div>
				<div class="bus-txt">
					<h4>${lists.operatorName}</h4>
					<p>${lists.operatorType}</p>
				</div>
				<div class="clearfix"></div>
			</li>
			<li class="dept">
				<div class="bus-ic1">
					<i class="fa fa-clock-o"></i>
				</div>
				<div class="bus-txt1">
					<h4><a href="#">${lists.arrivalTime}</a></h4>
					
				</div>
				<div class="clearfix"></div>
			</li>
			<li class="arriv">
				<div class="bus-txt2">
					<h4><a href="#">${lists.departureTime}</a></h4>
					
				</div>
			</li>
			<li class="seat">
				<div class="bus-ic3">
					<img src="images/seat.png" class="img-responsive" alt="">
				</div>
				<div class="bus-txt3">
					<h4>${lists.distance} kms</h4>
				
				</div>
				<div class="clearfix"></div>
			</li>
			<li class="fare">
				<div class="bus-txt4">
					<h5>Rs. ${lists.price}</h4>
					<a href="seat/${lists.id2}" class="view">View Seats</a>
					   

				</div>
			</li>
				<div class="clearfix"></div>
		</ul>
		

		
	</div>
</div>
	</c:forEach>
</c:if>
<!--- /bus-midd ---->
<%@ include file = "footer.jsp" %>
</body>
</html>
