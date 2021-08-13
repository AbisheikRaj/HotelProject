<%@page import="com.example.hotel_management.model.BookingDetailsModel"%>

<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel = "stylesheet" href = "/booking_details.css" />
  <title>Booking Details</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.p{
    background-color:white;
    height:600px;
    width:1200px;
    margin: auto;
margin-top:100px;
     box-shadow: 5px 5px 5px 5px;
    opacity:0.8;
     
}
.searchbox{
float:left;
margin-top:50px;
}

table {
   
    font-family: arial, sans-serif;
    border-collapse: collapse;
     width:100%; 
   
  }
  
td, th {
    border: 1px solid #dddddd;
    text-align: center;
 
   
}

.heading {
    display: flex;
    justify-content: center;
    margin-top: 60px;
    font-family:"Times New Roman";
    backgroud-colour:"pink";
}

</style>
</head>
<body class="text-info" >


  <div class="container" >
  <div class = "heading">
        <h1>Booking Details</h1>
    </div>
    <div class="searchbox">
     <form action="/searchbooking" class="form-inline" method="post">
 
<input type=text name="bookid" placeholder="search_by_bookingid"/> 
    
    <button type="submit"  style="background-color:black;"><i class="fa fa-search" aria-hidden="true" style="color:white;" ></i></button>
    </form>
    </div>
</div>
<%
    try
    {
    	 %>
       <div class="p">
   <table class = "booking__table">
    <caption>BookingDetails</caption>
<div class="table table-stripped table-dark">
      <thead>
          <tr>
             <th scope="column" class="table-dark">BOOKING ID</th>
             <th scope="column" class="table-dark">USER ID</th>
             <th scope="column" class="table-dark">BOOKING NAME</th>
             <th scope="column" class="table-dark">CHECK IN</th>
             <th scope="column" class="table-dark">CHECK OUT</th>
             <th scope="column" class="table-dark">ROOM NUMBER</th>
             <th scope="column" class="table-dark">ROOM TYPE</th>
                  <th scope="column" class="table-dark">EMAIL ID</th>
             <th scope="column" class="table-dark">MOBILE NUMBER</th>
          
                         <th scope="column" class="table-dark">ADDRESS</th>
          </tr>
      </thead>
      </div>
      <tbody>
        <%BookingDetailsModel book=(BookingDetailsModel)request.getAttribute("searchbook");
        
        	
            %>
            <tr>
                <td><%=book.getBookingId() %></td>
             <td><%=book.getUserId() %></td>
              <td><%=book.getBookingName() %></td>
               <td><%=book.getCheckIn() %></td>
                <td><%=book.getCheckOut() %></td>
                 <td><%=book.getRoomNumber() %></td>
                  <td><%=book.getRoomType() %></td>
                     <td><%=book.getEmail() %></td>
                  <td><%=book.getMobilenumber() %></td>
                     <td><%=book.getAddress() %></td>
            </tr>
<br>
          
           </tbody>
        </table><br>
</div>
</div>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
     }
    %>
</body>
</html>