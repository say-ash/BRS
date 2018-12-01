 <%@ page errorPage = "error.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                  <a href="#" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="index.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   

                    <li>
                        <a href="insertNewBus"><i class="fa fa-table "></i>Insert new bus  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="insertNewStop.jsp"><i class="fa fa-edit "></i>Insert new stop<span class="badge">Included</span></a>
                    </li>


                    <li>
                        <a href="updateBusDetail"><i class="fa fa-qrcode "></i>Update Bus_Details</a>
                    </li>
                    <li>
                        <a href="updateStops"><i class="fa fa-bar-chart-o"></i>Update Bus Stops</a>
                    </li>
                
                </ul>
                          </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
           <!--  <form action="addDetails" method="post">
		ID:<input type="text" name="ID"><br>
		Bus Number:<input type="number" name="busNumber"><br>
		<input type="submit"   onclick="add_fields();" value="Add More">
		<script>
		var room = 1;
		function add_fields() {
		    room++;
		    var objTo = document.getElementById('room_fileds')
		    var divtest = document.createElement("div");
		    divtest.innerHTML = '<div class="label">Room ' + room +':</div><div class="content"><span>Width: <input type="text" style="width:48px;" name="width[]" value="" /><small>(ft)</small> X</span><span>Length: <input type="text" style="width:48px;" namae="length[]" value="" /><small>(ft)</small></span></div>';
		    
		    objTo.appendChild(divtest)
		}
	    </script>
		</form > -->
		<form action="addMoreDetails" method="post">
 		<div id="room_fileds">
           <div>
           
            <div class="content">
            	<span>Enter Bus Number <input type="Number" style="width:100px;" name="busNumber" value="" /> </span>
                <span>Enter Bus Type<input type="text" style="width:100px;" name="busType" value="" /></span>
                <span>Enter Bus Name <input type="text" style="width:100px;" name="busName" value="" /> </span>
                <span>Enter Number of Seats<input type="Number" style="width:100px;" name="numberSeats" value="" /></span>
            </div>
           </div>
        </div>
        <input type="submit" value="Submit">
</form>
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                           
				  
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    
    <div class="footer">
      
    
                    </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="js/custom.js"></script>
    
   
</body>
</html>