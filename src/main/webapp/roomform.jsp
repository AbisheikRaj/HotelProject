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
    <div class="container">
        <form class="form-group"  action="/room_search">
            <div id="form">
                <h2 class="text-white text-center" style="font-style: oblique;">SEARCH YOUR ROOM</h2>

                <div id="first-group" >
                  
                  
                     <div id="content">
                       <i class="fa fa-bed" aria-hidden="true"></i>
                        <select id="input-group" style="background-color: black;" name="roomType" required>
                            <option value="">Room Type</option>
                            <option value="Single Bed_AC">Single Bed_AC</option>
                            <option value="Single Bed_Non-AC">Single Bed_Non-AC</option>
                            <option value="Double Bed_AC">Double Bed_AC</option>
                            <option value="Double Bed_Non-AC">Double Bed_Non-AC</option>
                            <option value="Triple Bed_AC">Triple Bed_AC</option>
                            <option value="Triple Bed_Non-AC">Triple Bed_Non-AC</option>
                            <option value="Family Bed_AC">Family Bed_AC</option>
                            <option value="Family Bed_Non-AC">Family Bed_Non-AC</option>
                           
                        </select>
                    </div>
                    
                  


                <button type="submit" value="Submit" id="submit-btn" >Search Now</button>

            </div>
        </form>
    </div>

</body>
</html>