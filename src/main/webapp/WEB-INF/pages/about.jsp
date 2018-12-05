  <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session != null) {
			if (session.getAttribute("email") == null) {			
				response.sendRedirect("login-signup.jsp");
			}
		}
	%>
	
<!DOCTYPE HTML>
<html>
<script type="text/javascript">
		history.pushState(null,null,location.href);
		window.onpopstate = function(){
			history.go(1);
		};
	</script>
<head>
<title>Green Wheels a Bus booking Service | About :: w3layouts</title>
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
 <%@ page errorPage = "error.jsp" %>
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
			<li class="hm"><a href="home.jsp"><i class="fa fa-home"></i></a></li>
			<li class="prnt"><a href="javascript:window.print()">Print/SMS Ticket</a></li>
				
		</ul>
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol"></li>				
			<li class="sig"><a href="first.html">Login|Sign up</a>
        </ul>
		<div class="clearfix"></div>
	</div>
</div>
<!--- /top-header ---->
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
							<li class="active"><a href="about">About</a></li>
								<li><a href="contact.html">Contact Us</a></li>
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
<div class="banner-1">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Green Wheels - Best in Class for Bus Booking Service</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- about ---->
<div class="about">
	<div class="container">
		<div class="about-top wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">
			<h2>Our Story</h2>
			<p>1 bus ticketing and hotel room reservation platform, was founded in 2013 and is a part of the Group. We take pride in providing the platform to book bus tickets with zero booking charges. You can now choose from 10,000+ bus operators and 90,000 routes</p>
		</div>
		<div class="about-mid">
			<div class="col-md-6 abt-lft wow fadeInLeft animated" data-wow-delay=".5s">
				<h3>Culture</h3>
				<p>Every other day new partnerships are forged - all with the aim of adding more value and convenience for our customers. We have grown organically by opening offices in key metros and inorganically through our partnerships. We encourage customers to let us know of any routes or bus operators we don't have in our list. We go right ahead and make sure that by the next time a customer logs on, we have on offer what was demanded.</p>
				<p>Most importantly, it's a team that has fun at work. It's a team that is close knit. Everyone is on a first name basis and it wouldn't be uncommon to see people exchanging hi-fives on small achievements. Office outings are a regular phenomenon and dancing is a must.</p>
				<p>This helps us understand what we are doing wrong and what we are getting right. This feedback is invaluable for us. And we have you, our customers, to thank for taking time off to write back to us. There are times when there are hiccups. It's a learning organization, but we are learning the ropes like our lives depend on it.</p>
			</div>
			<div class="col-md-6 abt-lft wow fadeInRight animated" data-wow-delay=".5s">
				<h3>Technology</h3>
				<p>Every other day new partnerships are forged - all with the aim of adding more value and convenience for our customers. We have grown organically by opening offices in key metros and inorganically through our partnerships. We encourage customers to let us know of any routes or bus operators we don't have in our list. We go right ahead and make sure that by the next time a customer logs on, we have on offer what was demanded.</p>
				<p>Most importantly, it's a team that has fun at work. It's a team that is close knit. Everyone is on a first name basis and it wouldn't be uncommon to see people exchanging hi-fives on small achievements. Office outings are a regular phenomenon and dancing is a must.</p>
				<p>This helps us understand what we are doing wrong and what we are getting right. This feedback is invaluable for us. And we have you, our customers, to thank for taking time off to write back to us. There are times when there are hiccups. It's a learning organization, but we are learning the ropes like our lives depend on it.</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="ab-btm">
			<div class="col-md-8 ab-lt wow fadeInLeft animated" data-wow-delay=".5s">
				<h3>Testimonials</h3>
				<div class="ab-tp">
					<p>"Its very good concept of booking bus ticket online, I got the number from a helpline at 2.00pm & by 3.30 I got my tickets booked by 3.00 for the bus at 9.00pm, when other bus service."</p>
					<h5>- John Doe</h5>
					<h6>- Orlando</h6>
				</div>
				<div class="ab-tp">
					<p>"Its very good concept of booking bus ticket online, I got the number from a helpline at 2.00pm & by 3.30 I got my tickets booked by 3.00 for the bus at 9.00pm, when other bus service."</p>
					<h5>- Mark Paul</h5>
					<h6>- New Orleans</h6>
				</div>
				<div class="ab-tp">
					<p>"Its very good concept of booking bus ticket online, I got the number from a helpline at 2.00pm & by 3.30 I got my tickets booked by 3.00 for the bus at 9.00pm, when other bus service."</p>
					<h5>- Levin</h5>
					<h6>- Designer</h6>
				</div>
			</div>
			<div class="col-md-4 ab-rt wow fadeInRight animated" data-wow-delay=".5s">
				<h3>Our Lists</h3>
					<ul>
						<li><a href="#">At vero eos et accusamus et iusto odio</a></li>
						<li><a href="#">Egnissi mos ducimus qui blanditiis</a></li>
						<li><a href="#">Rraesentium voluptatum deleniti atque</a></li>
						<li><a href="#">At vero eos et accusamus et iusto odio</a></li>
						<li><a href="#">Egnissi mos ducimus qui blanditiis</a></li>
						<li><a href="#">Rraesentium voluptatum deleniti atque</a></li>
						<li><a href="#">At vero eos et accusamus et iusto odio</a></li>
						<li><a href="#">Egnissi mos ducimus qui blanditiis</a></li>
						<li><a href="#">Rraesentium voluptatum deleniti atque</a></li>
						<li><a href="#">At vero eos et accusamus et iusto odio</a></li>
						<li><a href="#">Egnissi mos ducimus qui blanditiis</a></li>
						<li><a href="#">Rraesentium voluptatum deleniti atque</a></li>
						<li><a href="#">Egnissi mos ducimus qui blanditiis</a></li>
					</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--- /about ---->
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

</body>
</html>

			