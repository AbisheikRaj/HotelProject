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
   #form{
    background-color:#000;
    height:600px;
    width:100%;
  
  
    opacity:0.7;
}
.div{
padding-top:200px;
margin-left:200px;
margin-right:200px;

  text-align: center;

}
#submit-btn{
   
    background: transparent;
    color:#fff;
    width:150px;
    border:1px solid #ff80c0;
    outline:none;

    font-size: 20px;
}
.div1{
padding-left:400px;
}
#submit-btn:hover {
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
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
   
            <div id="form">
            
            <div class="div">
                <h2 class="text-white text-center" style="font-style: oblique;">WELCOME USERNAME!!!</h2>

                
  </div>
         
<div class="div1">
<form action="roomform.jsp">
                <button type="submit" value="Submit" id="submit-btn" >Book Now</button>
                </form>
            </div>  

            </div>
      

</body>
</html>