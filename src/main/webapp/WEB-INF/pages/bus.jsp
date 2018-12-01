<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page errorPage = "error.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Green Wheels Bus Booking | Bus ::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Green Wheels Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
</head>
<body>
<!-- top-header -->
<div class="top-header">
	<div class="container">
		<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
			<li class="hm"><a href="index.html"><i class="fa fa-home"></i></a></li>
			<li class="prnt"><a href="javascript:window.print()">Print/SMS Ticket</a></li>
				
		</ul>
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol"></li>				
			<li class="sig"><a href="login-signup.html">Login|Signup</a>
        </ul>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /top-header ---->
<!--- header ---->

<!--- /header ---->
<!--- footer-btm ---->
<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
	<div class="container">
	<div class="navigation">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-1">
						<ul class="nav navbar-nav">
							<li><a href="about.jsp">About</a></li>
								<li><a href="faq.jsp">Faq</a></li>
								<li><a href="terms.jsp">Terms of Use</a></li>
								<li><a href="contact.jsp">Contact Us</a></li>
								<div class="clearfix"></div>
						</ul>
					</nav>
				</div><!-- /.navbar-collapse -->	
			</nav>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
<!--- /footer-btm ---->
<!--- banner-1 ---->
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Green Wheels - Best in Class for Bus booking</h1>
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
					<a href="seat" class="view">View Seats</a>
					   

				</div>
			</li>
				<div class="clearfix"></div>
		</ul>
		

		
	</div>
</div>
	</c:forEach>
</c:if>
<!--- /bus-midd ---->
<!--- footer-top ---->
<div class="footer-top">
	<div class="container">
		<div class="col-md-6 footer-left wow fadeInLeft animated" data-wow-delay=".5s">
			<h3>Bus Operators</h3>
				<ul>
					<li><a href="bus.html">New York  Charter </a></li>
					<li><a href="bus.html">Washington Charter</a></li>
					<li><a href="bus.html">Los Angeles Charter</a></li>
					<li><a href="bus.html">Chicago Charter</a></li>
					<li><a href="bus.html">Orlando Charter</a></li>
					<li><a href="bus.html">New Orleans Charter</a></li>
					<li><a href="bus.html">Houston Charter</a></li>
					<li><a href="bus.html">Nashville Charter</a></li>
					<li><a href="bus.html">Charlotte Charter</a></li>
					<li><a href="bus.html">Toronto Charter</a></li>
					<li><a href="bus.html">Washington Charter</a></li>
					<li><a href="bus.html">Los Angeles Charter</a></li>
					<li><a href="bus.html">Chicago Charter</a></li>
					<li><a href="bus.html">Orlando Charter</a></li>
					<li><a href="bus.html">New Orleans Charter</a></li>
					<div class="clearfix"></div>
				</ul>
		</div>
		<div class="col-md-6 footer-left wow fadeInRight animated" data-wow-delay=".5s">
			<h3>Bus Routes</h3>
				<ul>
					<li><a href="travels.html">Alabama-California</a></li>
					<li><a href="travels.html">Alaska-Colorado</a></li>
					<li><a href="travels.html">Arizona-Delaware</a></li>
					<li><a href="travels.html">Arkansas-Florida</a></li>
					<li><a href="travels.html">Kansas-Georgia</a></li>
					<li><a href="travels.html">Iowa-Hawaii</a></li>
					<li><a href="travels.html">Indiana-Illinois</a></li>
					<li><a href="travels.html">Illinois-Florida</a></li>
					<li><a href="travels.html">Idaho-Indiana</a></li>
					<li><a href="travels.html">Hawaii-Iowa</a></li>
					<li><a href="travels.html">Georgia-Kansas</a></li>
					<li><a href="travels.html">Florida-Arkansas</a></li>
					<li><a href="travels.html">Delaware-Arizona</a></li>
					<li><a href="travels.html">Colorado-Alaska</a></li>
					<li><a href="travels.html">California-Alabama</a></li>
					<div class="clearfix"></div>
				</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /footer-top ---->
<!---copy-right ---->
<div class="copy-right">
	<div class="container">
	
		<div class="footer-social-icons wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
		</div>
		<p class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">© 2016 Green Wheels . All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
	</div>
</div>
<!--- /copy-right ---->
</body>
</html>