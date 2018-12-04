<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<link href="../css/seatcss.css" rel="stylesheet" type="text/css" media="all" />
<head>
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