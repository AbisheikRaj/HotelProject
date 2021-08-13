
<%@page import="com.example.hotel_management.HotelRoomModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Book Your Room</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
		<link rel = "shortcut icon" href = "imgs/hotel_images-removebg-preview.png" />
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>    
        <link rel="stylesheet" href="css/roomform.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<style>

.pad{
 padding-right: 20px;
 }
 input[type=text]:disabled {
  background:#ffff00;
}
.marleft{
  
  margin-left: 100px;
  }
.div1{
padding-top:150px;
}
.padleft{
padding-left:100px;
}
 #form{
    background-color: #000;
    height:400px;
    width:800px;
    margin: auto;
    margin-top: 50px;
    
    opacity:0.7;
}
#submit1-btn{
    margin-top: 100px;
    margin-left: 50px;
   
    color:#fff;
    width:150px;
    border:1px solid #ff80c0;
    outline:none;
    padding:10px;
    font-size: 20px;
}
.div{
padding-top:50px;
margin-left:200px;
margin-right:200px;

  text-align: center;

}
</style>

</head>
<body  style="background-image: url('roombookpic.jpg');">

   <nav id="mainNavbar" class="navbar navbar-dark bg-dark navbar-expand-md py-0 fixed-top">
        
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navLinks" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navLinks">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a  href="roomform.jsp" class="nav-link">BOOK YOUR STAY</a>
                </li>
                <li class="nav-item">
                    <a href="userIndex.jsp" class="nav-link">ROOMS</a>
                </li>
				                <li class="nav-item">
                    <a href="index.jsp" class="nav-link">LOGOUT</a>
                </li>
            </ul>
        </div>
    </nav>
    
            <a href="roomform.jsp"> <button type="submit" class="btn btn-outline-dark " id="submit1-btn" ><em class="far fa-arrow-alt-circle-left"></em>BACK</button></a>
               
                    <div id="form">
                    <div class="div">
                        <h2 class="text-white" style="font-style: oblique;">ROOM's</h2>
                         </div>
               
                
                        <div>
                        <p class="lead">
                        <%List<HotelRoomModel> room=(List)request.getAttribute("room"); 
                        String type=String.valueOf(request.getAttribute("value"));
                        %>
                         <div class="padleft">
                        
                         <form action="/room_number">
                        <%for(HotelRoomModel h:room) {
                        if(h.getRoomType().equals(type)&&h.getRoomAvailability().equals("true")){
                        %>
                       
                       <input type="checkbox" class="btn-check  btn-success" id="success-outlined<%=h.getRoomNumber()%>" autocomplete="off" name="check" value="<%=h.getRoomNumber()%>" ><label class="btn btn-outline-success" for="success-outlined<%=h.getRoomNumber()%>">room <%=h.getRoomNumber() %></label>
                       <%}
                        else
                        {
                        %>
                         <input type="checkbox" class="btn-check  btn-danger" id="danger-outlined<%=h.getRoomNumber()%>" autocomplete="off" name="check" value="<%=h.getRoomNumber()%>" disabled><label class="btn btn-outline-danger" for="success-outlined<%=h.getRoomNumber()%>">room <%=h.getRoomNumber() %></label>
                             <%}} %>
                                 </div>
                             <div class="div1">
                              <button type="submit" class="btn btn-outline-dark " id="submit-btn" >BOOK</button>
                              </div>
                         </form>
                        </p>
                        </div>  
                  </div>
       
            


 
 
</body>
</html>