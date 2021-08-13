<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="com.example.hotel_management.BookingDetailsModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Status</title>
<script src="https://kit.fontawesome.com/72ae9608dd.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.0/moment.min.js"></script>
        <style>
        #form{
    background-color:#c0c0c0;
    height:800px;
    width:800px;
    margin: auto;
    margin-top: 100px;
    margin-bottom:100px;
    opacity:0.8;
}
 #divbox{
    background-color:white;
    height:100px;
    width:500px;
   
  
    
}

.iconDetails {

 float:right; 
 height:150px;
 width:150px;
 } 



#divboxroom{
    background-color:white;
    height:150px;
    width:500px;
   
  
    
}
#divboxcus{
    background-color:white;
    height:190px;
    width:500px;
   
  
    
}
 #divbox1{
    background-color:black;
    height:100px;
    width:50px;
   float:right;
  
   
}
.bookid{
float:right;
padding-right:100px;

}
.bookidin{
padding-right:10px;
padding-left:10px;
padding-top:10px;
padding-bottom:10px;
}
.icon{
  
  float:right;
    padding-right: 15px;
}
.green-color {
color:green;
}
.div1{
  padding-top: 25px;
  padding-left: 50px;
}
.divhead{
 padding-left: 100px;
  padding-top: 25px;
}
.text{
padding-top: 15px;
color:000000;
  padding-left: 15px;
}
body {
 background-image: url("imgs/header1.jpg");

}
        </style>
</head>

<body >
 <nav id="mainNavbar" class="navbar navbar-dark bg-dark navbar-expand-md py-0 fixed-top">
       
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navLinks">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="" class="nav-link">HOME</a>
                </li>
                <li class="nav-item">
                    <a href="roomform.html" class="nav-link">BOOK YOUR STAY</a>
                </li>
                <li class="nav-item">
                    <a href="index.html" class="nav-link">ROOMS</a>
                </li>
            </ul>
        </div>
    </nav>
    <%
  
       BookingDetailsModel book=(BookingDetailsModel)request.getAttribute("bookdetails"); 
       String day[]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
       String month[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
       Date d=new Date(book.getCheckIn());  
       int checkin=(int)d.getDay();
       Date d1=new Date(book.getCheckOut());  
       int checkout=(int)d1.getDay();
       String checkindate[] = book.getCheckIn().split("/");
       String checkoutdate[] = book.getCheckOut().split("/");
   	LocalDate c1 = LocalDate.parse(checkindate[2]+"-"+checkindate[0]+"-"+checkindate[1]);
  	LocalDate c2 = LocalDate.parse(checkoutdate[2]+"-"+checkoutdate[0]+"-"+checkoutdate[1]);
  	int nop;
  	if(book.getRoomType().startsWith("Single"))
  		nop=1;
  	else if(book.getRoomType().startsWith("Double"))
  		nop=2;
	else if(book.getRoomType().startsWith("Triple"))
  		nop=3;
	else
		nop=4;
       %>
   
      
   <div id="form">
   <div class="div1">
   
   <h2 style="color: green;"><em class="fa fa-check-circle green-color fa-2x" ></em>      YOUR BOOKING IS COMPLETE</h2>
   <h5 style="color: black;padding-left:70px">Thank you for booking with us!! <span class="bookid">
   <h5 style="border-style: dotted;" class="bookidin">Booking ID : <%=book.getBookingId() %> <h5>
   </span>
   </div></h5>
   
   
   <div class="divhead">
   <h5>DATES & NUMBER OF PEOPLE</h5>
   
   
  
   
   <div id="divbox">  
   <div class="text"> 
   <h6><%=day[checkin] %> <%=checkindate[1] %>-<%=month[Integer.parseInt(checkindate[0])-1] %>-<%=checkindate[2] %> to <%=day[checkout] %> <%=checkoutdate[1] %>-<%=month[Integer.parseInt(checkoutdate[0])-1] %>-<%=checkoutdate[2] %><i class="fa fa-calendar icon"  aria-hidden="true" ></i></h6> 
   <h6><%=ChronoUnit.DAYS.between(c1,c2) %> night<em class="fas fa-moon icon"></em></h6>
   <h6><%=nop %> people<em class="fas fa-users icon"></em></h6>
   </div>
  
 
   
   </div>
 </div>
 
  <div class="divhead">
   <h5>ROOM DETAILS</h5>
   
      <div id="divboxroom">  
      <div>
       <img src='imgs/singlebed.jpg' class='iconDetails' alt="">
     
       <h5 style="padding-top:50px;padding-left:15px"><%=book.getRoomType() %></h5> 
        <h6 style="padding-top:5px;padding-left:15px">Room Number: <%=book.getRoomNumber() %></h6> 
       </div>
       
   </div>
 
   </div>
   
    <div class="divhead">
   <h5>CUSTOMER DETAILS</h5>
    <div id="divboxcus"> 
    <table class="table table-borderless">
  <caption> </caption>
  <tbody>
    <tr>
      <th scope="row"></th>
      <td>Customer Name :</td>
      <td><%=book.getBookingName() %></td>
    
    </tr>
    <tr>
      <th scope="row"></th>
      <td>Address :</td>
      <td><%=book.getAddress() %></td>
    
    </tr>
    <tr>
      <th scope="row"></th>
      <td>Mobile Number :</td>
      <td><%=book.getMobilenumber() %></td>
    </tr>
     <tr>
      <th scope="row"></th>
      <td>E-mail :</td>
      <td><%=book.getEmail() %></td>
    </tr>
  </tbody>
</table>
    </div>
   </div>
   
   </div>
   <script>
   var date = new Date(2013, 1, 12);
   console.log(moment(date).format('dddd MMMM D Y'));
   </script>
</body>
</html>