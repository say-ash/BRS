<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
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
                        <a href="#" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   

                    <li>
                        <a href="insertNewBus"><i class="fa fa-table "></i>Insert new bus  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="insertNewStop"><i class="fa fa-edit "></i>Insert new stop<span class="badge">Included</span></a>
                    </li>


                  <li>
                   		
                        <a href="viewDetails"><i class="fa fa-qrcode "></i>View All Details</a>
                         
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
                             <strong>Welcome Admin ! </strong> You Have to update Bus  For Today.
                        </div>
                      
                       
                    </div>
                    </div>
                      
                  <!-- /. ROW  --> 
                        <c:if test="${ not empty insert }">  
                        <form action="insertBus" method="post">
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
                        </c:if> 
                        
                         <c:if test="${ not empty busstop }">  
                        <form action="insertStop" method="post">
 <div id="room_fileds">
           <div>
            <div class='label'>details:</div>
            <div class="content">
               
  <TABLE BORDER="3">
  <TR>
    <TD>Enter Bus Number:</TD>
    <TD><span><input type="Number" style="width:200px;" name="busNumber" value="" /></span></TD>
  </TR>
  <TR>
    <TD>Stop name:</TD>
    <TD><span><input type="text" style="width:200px;" name="stopName" value="" /></span></TD>
  </TR>
   <TR>
    <TD>Stop order:</TD>
    <TD><span> <input type="Number" style="width:200px;" name="stopOrder" value="" /></span></TD>
  </TR><br>
   <TR>
    <TD>Arrival time:</TD>
    <TD><span><input type="text" style="width:200px;" name="arivalTime" value="" /></span></TD>
  </TR>
   <TR>
    <TD>Departure time:</TD>
    <TD><span><input type="text" style="width:200px;" name="departureTime" value="" /></span></TD>
  </TR>
   <TR>
    <TD>Distance:</TD>
    <TD><span><input type="Number" style="width:200px;" name="distance" value="" /></span></TD>
  </TR>
   <TR>
    <TD>Price:</TD>
    <TD><span><input type="Number" style="width:200px;" name="price" value="" /></span></TD>
  </TR>
</TABLE>
 
             </div>
      </div>
</div>
        <input type="submit" value="Submit">
</form>
                     </c:if>
                     
                     <c:if test="${not empty view }">
                     <h1 align="center" >Bus Details</h1> 
<table border="3" align="center">
      <tr>
      <td>BusNumber</td>
      <td>BusType</td>
      <td>BusName</td>
      <td>NumberofSeats</td>
            <td>Update</td>
      
      </tr>
      <c:if test="${not empty list}">
    <c:forEach items="${list}" var="lists">
      <tr>
      <td><c:out value="${lists.busNumber}" /></td>
      <td><c:out value="${lists.busType}" /></td>
      <td><c:out value="${lists.busName}" /></td>
      <td><c:out value="${lists.numberSeats}" /></td>
      <td><a href="updatebus/${lists.busNumber}">update</a></td>
      </tr>
</c:forEach>
</c:if>
</table>
                     
                     
                     </c:if>
                     
                     
                     
                     
                   
                     
       
                     
                     <c:if test="${not empty done }">
                    
                     New Bus Inserted
                    
                     </c:if>
                
                     
				  
				  
                    </div>
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
       >
          

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
