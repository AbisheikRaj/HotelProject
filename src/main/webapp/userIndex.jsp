<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<title>Book Your Room</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://kit.fontawesome.com/72ae9608dd.js" crossorigin="anonymous"></script>
<link rel = "shortcut icon" href = "imgs/hotel_images-removebg-preview.png" />


    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,700" rel="stylesheet">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">


    <link rel="stylesheet" href="app.css">

  <style>
.zoom {
 
}

.zoom:hover {
  -ms-transform: scale(1.1); /* IE 9 */
  -webkit-transform: scale(1.1); /* Safari 3-8 */
  transform: scale(1.1); 
}
.admin__page__footer {
    border: 2px solid black;
    height: 250px;
    background-color: lavender;
    display: flex;
    justify-content: center;
    align-items: center;
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
                    <a href="roomform.jsp" class="nav-link">BOOK YOUR STAY</a>
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

    <section class="container-fluid px-0">
        <div class="row align-items-center">
            
                <img class="img-fluid" src="imgs/mainroomimg.JPG" alt="" width="100%">
        
        </div>
    </section>

    <section class="container-fluid px-0">
        <div class="row align-items-center content">
            <div class="col-md-6 order-2 order-md-1">
               <img src="imgs/singlebed.jpg" alt="" class="img-fluid zoom" onclick="store('singlebed','SINGLE BED ROOM')">
            </div>
            <div class="col-md-6 text-center order-1 order-md-2">
                <div class="row justify-content-center">
                    <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                        <h2>SINGLE BED ROOM</h2>
                         </div>
                </div>
                <div>
                        <p class="lead">
                        
                         <img src="imgs/bed.png" alt="" class="img-fluid">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-user-friends" ></em>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-bath"></em>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-cube"></em>
                        </p>
                        </div>
                        <div>
                        <p class="lead">
                        
                         1 Betten
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          1 Person
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        1 Bathroom
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          20 m2
                        </p>
                        </div>  
                  
            </div>
            
        </div>
        <div class="row align-items-center content">
            <div class="col-md-6 text-center">
                <div class="row justify-content-center">
                    <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                        <h2>DOUBLE BED ROOM</h2>
                        <p class="lead">
                        <div>
                         <img src="imgs/bed.png" alt="" class="img-fluid">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-user-friends" ></em>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-bath"></em>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-cube"></em>
                          </div>
                          <div>
                           2 Betten
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          2 Person
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        1 Bathroom
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          26 m2
                          </div>
                        </p>
                      </div>
                      
                </div>
                
            </div>
            
            <div class="col-md-6">
                <img src="imgs/doublebed.jpg" alt="" class="img-fluid zoom" onclick='store("doublebed","DOUBLE BED ROOM")'>
            </div>
        </div>
        <div class="row align-items-center content">
            <div class="col-md-6 order-2 order-md-1">
                <img src="imgs/familybedroom.jpg" alt="" class="img-fluid zoom" onclick='store("familybedroom","FAMILY BED ROOM")'>
            </div>
            <div class="col-md-6 text-center order-1 order-md-2">
                <div class="row justify-content-center">
                    <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                        <h2>FAMILY BED ROOM</h2>
                       
                              <p class="lead">
                        <div>
                         <img src="imgs/bed.png" alt="" class="img-fluid" >
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-user-friends" ></em>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-bath"></em>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-cube"></em>
                          </div>
                          <div>
                           4 Betten
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          4 Person
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        1 Bathroom
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          80 m2
                          </div>
                        </p>
                    </div>
                </div>
            </div>
            
        </div>
            <div class="row align-items-center content">
            <div class="col-md-6 text-center">
                <div class="row justify-content-center">
                    <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                        <h2>TRIPLE BED ROOM</h2>
                            <p class="lead">
                        <div>
                         <img src="imgs/bed.png" alt="" class="img-fluid zoom" >
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-user-friends" ></em>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-bath"></em>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <em class="fas fa-cube"></em>
                          </div>
                          <div>
                           3 Betten
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          3 Person
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        1 Bathroom
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          29 m2
                          </div>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <img src="imgs/triplebed.jpg" alt="" class="img-fluid zoom" onclick='store("triplebed","TRIPLE BED ROOM")'>
            </div>
        </div>
    </section>
	<hr style="background-color: red;height: 5px;"></hr>
	<div class = "admin__page__footer" style="background-image: url('imgs/pic9.jpg')">
							<p><strong>Find Us</strong><br><br>
								Vacation Center, 176 W OMR Street,<br>
                                Chennai, TamilNadu 600119, India<br>
                                (+91) 987 654 3210<br>
                                (+91) 987 654 3211<br>
                                citadinesinfo@gmail.com<br><br>
								<strong>© 2021 All Rights Reserved.</strong>
                            </p>
    </div>
  <script>
  function store(name,value) {

	  var bed = name;
	  var head=value;
	  sessionStorage.setItem("bed", bed);
	  sessionStorage.setItem("head",head);
	  location.href = "viewroom.jsp";
	  console.log(bed);
	  console.log(head);
  }

	  </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

   
</body>

</html>