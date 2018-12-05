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
    <link href="../css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="../css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="../css/custom.css" rel="stylesheet" />
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
                        <a href="../insertNewBus"><i class="fa fa-table "></i>Insert new bus  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="../insertNewStop"><i class="fa fa-edit "></i>Insert new stop<span class="badge">Included</span></a>
                    </li>


                  <li>
                   		
                        <a href="../viewDetails"><i class="fa fa-qrcode "></i>View All Details</a>
                         
                    </li>
                   
                   
                
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        
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
                 
        
                     <h1>Edit Bus</h1>   
   <c:forEach items="${list}" var="lists">
        <form  action="../save.html" method="post"> 
        <table >    
        <tr>  
        <td></td>    
        <td><input type="hidden" name="busNumber"  value="${lists.busNumber}" /></td>   
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><input name="busName"  value="${lists.busName}" /></td>  
         </tr>    
         <tr>    
          <td>Date :</td>    
          <td><input name="busDate" value="${lists.busDate}" /></td>  
         </tr>   
         <tr>    
          <td>Status :</td>    
          <td><input name="busStatus" value="${lists.busStatus}"  /></td>  
         </tr> 
          <tr>    
          <td>Number of Seats :</td>    
          <td><input name="busSeats" value="${lists.busSeats}" /></td>  
         </tr> 
         <tr>    
          <td>Type :</td>    
          <td><input name="busType" value="${lists.busType}"  /></td>  
         </tr>  
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save"/></td>    
         </tr>    
        </table>  
            
       </form>  
 
</c:forEach>
</div>
</div>

                     
                 
                     </div>
                     </body>
                     </html>