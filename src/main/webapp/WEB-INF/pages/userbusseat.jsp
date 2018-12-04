<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session != null) {
			if (session.getAttribute("email") == null) {			
				response.sendRedirect("login-signup.jsp");
			}
		}
	%>
	
<html lang="en">
<head>
<title>BRS Bus Booking Service | Home ::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Green Wheels Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="../css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- Custom Theme files -->
<script src="../js/jquery-1.12.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<!--animate-->
<link href="../css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="../js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<link href="../css/seatcss.css" rel="stylesheet" type="text/css" media="all" />
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/seatcss.css">
</head>
<style>
.input {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<body>

<!-- top-header -->
<div class="top-header">
	<div class="container">-
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol">Welcome ${email}
			</li>				
			<li class="sig"><a href="home.jsp">Logout</a>
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
							<li><a href="about.html">About</a></li>
								<li><a href="faq.html">FAQ</a></li>
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
<!--- banner ---->


<form action="../bookseat.html" method="Post">
    <div class="row info">
        <div class="col-sm-4"><label class="reserved"><input type="checkbox" class="cust-checkbox" disabled><span></span>Reserved Seat </label></div>
        <div class="col-sm-4"><label class="selected"><input type="checkbox" class="cust-checkbox" disabled><span></span>Selected Seat </label></div>
        <div class="col-sm-4"><label ><input type="checkbox" class="cust-checkbox" disabled><span></span>Empty Seat </label></div>
    </div>
    <c:if test="${empty msg}">
     <div class="seats">
        <div class="row">
            <div class="col-sm-4">
                  
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="1">1<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="2">2<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="3">3<span></span></label>    
            </div>
            <div class="col-sm-4">
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="4" >4<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="5">5<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="6">6<span></span></label>    
            </div>
            <div class="col-sm-4">
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="7">7<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="8">8<span></span></label>
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="9">9<span></span></label>    
            </div>
             <div class="col-sm-4">
                <label><input type="checkbox" class="cust-checkbox" name="seatno" value="10">10<span></span></label>
            </div>
        </div>
   
    </div>
    
    </c:if>
    
    <c:if test="${not empty msg}"> 
        <div class="seats">
        <div class="row">
            <div class="col-sm-4">
                  
                <label <c:if test="${fn:contains(msg,1)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="1" >1<span></span></label>
                <label <c:if test="${fn:contains(msg,2)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="2">2<span></span></label>
                <label <c:if test="${fn:contains(msg,3)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="3">3<span></span></label>    
            </div>
            <div class="col-sm-4">
                <label <c:if test="${fn:contains(msg,4)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="4">4<span></span></label>
                <label <c:if test="${fn:contains(msg,5)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="5">5<span></span></label>
                <label <c:if test="${fn:contains(msg,6)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="6">6<span></span></label>    
            </div>
            <div class="col-sm-4">
                <label <c:if test="${fn:contains(msg,7)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="7">7<span></span></label>
                <label <c:if test="${fn:contains(msg,8)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="8">8<span></span></label>
                <label <c:if test="${fn:contains(msg,9)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="9">9<span></span></label>    
            </div>
             <div class="col-sm-4">
                <label <c:if test="${fn:contains(msg,10)}">class="reserved"</c:if>><input type="checkbox" class="cust-checkbox" name="seatno" value="10">10<span></span></label>
            </div>
        </div>
   
    </div>
    </c:if> 
    
    
     <div style="text-align:center;">
    <input type="submit" class="input" value="Book Now" />
 <input type="hidden" name="id" value=${bid}>
	</div>  
    </form>   
    <%@ include file = "footer.jsp" %>  
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".reserved input").prop('checked', true);
            $(".reserved input").prop('disabled', true);
            $("label").click(function(){
                if(!$(this).hasClass("reserved")){
                    if($(this).find("input").is(":checked")){
                    $(this).addClass("selected");
                    }else{
                        console.log("selected");
                        $(this).removeClass("selected");
                    }
                }
                else{
                    alert("Already booked");
                }
            })
        });
    </script>