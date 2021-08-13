<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resort booking form</title>
    <link rel="stylesheet" href="css/roomform.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style>
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
   </style>
  
</head>
<body>
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
                    <a  href="index.jsp"  class="nav-link">LOGOUT</a>
                </li>
            </ul>
        </div>
    </nav>
       <a href="roomform.jsp"> <button type="submit" class="btn btn-outline-dark " id="submit1-btn" ><em class="far fa-arrow-alt-circle-left"></em>BACK</button></a>
    <div class="container">
        <form class="form-group"  method="post" action="/room_booked" onSubmit="return check()">
            <div id="form">
                <h2 class="text-white text-center" style="font-style: oblique;">Fill your details</h2>

                <div id="first-group">
                  
                  
                     <div id="content">
                       <i class="fa fa-user-circle" aria-hidden="true"aria-hidden="true"></i>
                            <input type="text" id="input-group"  placeholder="Name" name="bookingName" required>
                    </div>
                    
                   
                   <div id="content">
                   <i class="fa fa-envelope" aria-hidden="true"></i>
                            <input type="text" id="input-group"  placeholder="E-mail Id" name="email" required>
                    </div>
                  
                    <div id="content">
                        <i class="fa fa-calendar call"aria-hidden="true"  ></i>
                        <input type="text"  id="datepicker1" placeholder="Checkin Date" name="checkIn" style="background-color: black;color:white" required>
                    </div>

                   

                </div>

                <div id="second-group">

                    <div id="content">
                        <i class="fa fa-address-book" aria-hidden="true"></i>s
                        <input type="text" id="input-group"  placeholder="Address" name="address" required>
                    </div>
                    
                       <div id="content">
                      <i class="fa fa-phone" aria-hidden="true"></i>
                            <input type="text" id="input-group"  placeholder="Mobile Number" name="mobilenumber" required>
                    </div>
                    <div id="content">
                        <i class="fa fa-calendar call1"  aria-hidden="true"></i>
                        <input type="text" id="datepicker"  placeholder="Checkout Date" name="checkOut" style="background-color: black;color:white" required>
                    </div>

         </div>

                <button type="submit" value="Submit" id="submit-btn" >Book Now</button>

            </div>
        </form>
    </div>
     <script type="text/javascript">
     $(document).ready(function() {
    	  $("#datepicker1").datepicker();
    	  $(".call").click(function() {
    	    $("#datepicker1").focus();
    	  });
    	});
                        
     $(document).ready(function() {
    	  $("#datepicker").datepicker();
    	  $('.call1').click(function() {
    	    $("#datepicker").focus();
    	  });
    	});   
     function check() {
    	  var date1 = new Date(document.getElementById('datepicker1').value);
    	  var date2 = new Date(document.getElementById('datepicker').value);
    	  var diff = Math.abs(date2.getTime() - date1.getTime());
    	  var noofdays = Math.ceil(diff / (1000 * 3600 * 24));  
    	  if(date1  > date2){ 
    		alert("Check-out date must be after check-in date!")
    		 return false;
   		
    	  }
    	  else
        	  {
        	  return true;
        	  }
    	 
     }
    </script>
</body>
</html>