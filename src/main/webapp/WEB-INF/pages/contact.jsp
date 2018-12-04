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
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> BRS - Best in Class for Bus booking service</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- contact ---->
<div class="contact">
	<div class="container">
	<h3>Contact Us</h3>
		<div class="col-md-3 contact-left">
			<div class="con-top animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
				<h4>Ashrafhussain Sayyed</h4>
					<li>7th Floor dolor sit amet,</li> 
					<li># Grand Hyatt New York Road,</li>  
					<li>Opp. adipiscing elit,</li> 
					<li>Alaska - 99501</li> 
					<li>Ph:4568956555 </li>
					<li>Call Centre Time : 7am to 11pm</li>
			</div>
		</div>
		<div class="col-md-3 contact-left">
			<div class="con-top animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
				<h4>Monika K ghadage</h4>
					<li>12th Floor dolor sit amet,</li> 
					<li># Grand Hyatt New York Road,</li>    
					<li>Opp. adipiscing elit,</li> 
					<li>Alabama - 35007</li>
					<li>Ph:4568975125 </li>
					<li>Call Centre Time : 7am to 11pm</li>					
			</div>
		</div>
		<div class="col-md-3 contact-left animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
			<div class="con-top">
				<h4>Divya B gala</h4>
					<li>11th Floor dolor sit amet,</li> 
					<li># Grand Hyatt New York Road,</li>  
					<li>Opp. adipiscing elit,</li> 
					<li>Arizona - 85123</li> 
					<li>Ph:1478523698</li>
					<li>Call Centre Time : 7am to 11pm</li>
			</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
	</div>
</div>
<!--- /contact ---->
<%@ include file = "footer.jsp" %>
</body>
</html>