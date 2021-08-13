<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View Your Room</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
		<link rel = "shortcut icon" href = "imgs/hotel_images-removebg-preview.png" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/72ae9608dd.js" crossorigin="anonymous"></script>
<style type="text/css">
.carousel {

height:360px;

}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: black;
}
.carousel-inner > .item {
   height: 400px;
}
.mar{
  
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 200px;
}
.mar1{
  
  margin-top: 100px;
  }
  .marright{
  
  margin-right: 30px;
  }
  .marleft{
  
  margin-left: 100px;
  }
  .button{
  float:left;
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
 
     <div class="row align-items-center content mar1">
     <a href="userIndex.jsp"><button type="button" class="btn btn-outline-dark button">View Other BedType's</button></a>
            <div class="col-md-6 text-center">
                <div class="row justify-content-center">
                    <div class="col-10 col-lg-8 blurb mb-5 mb-md-0">
                     
                        <h2 id=head></h2>
                        <br/>
                        <div class="">
                        <p class="lead">
                        <div>
                         <img src="imgs/kettle.JPG" alt="" class="img-fluid" >Tea/Coffee
                         
                          <img src="imgs/bath.JPG" alt="" class="img-fluid marleft">Shower-bathtub
                          
                        </div>
                        <br/>
                           <div>
                          <img src="imgs/locker.JPG" alt="" class="img-fluid">Safe
                                                 <span class="marright"></span>
                         <img src="imgs/bathrobe.JPG" alt="" class="img-fluid marleft">Bathrobe & slippers

                          </div>
                        <br/>
                            <div>
                          <img src="imgs/phone.JPG" alt="" class="img-fluid">Telephone
                         
                         <img src="imgs/tv.JPG" alt="" class="img-fluid marleft">Flat screen TV
                          </div>
                          <br/>
                            <div>
                          <img src="imgs/desk.JPG" alt="" class="img-fluid">Desk
         
                         <img src="imgs/balcony.JPG" alt="" class="img-fluid marleft">Balcony or Terrace
                          </div>
                         <br/>
                            <div>
                          <img src="imgs/water.JPG" alt="" class="img-fluid">Mineral water
                           
                         <img src="imgs/hairdryer.JPG" alt="" class="img-fluid marleft">Hairdryer
                          </div>
                          <br/>
                          <div>
                          <img src="imgs/breakfast.JPG" alt="" class="img-fluid">Breakfast included
                          <span class="marleft"></span>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </div>
                        </p>
                        </div>
                        <br/>
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='roomform.jsp;'">BOOK</button>
                      </div>
                      
                </div>
                
            </div>
            
            <div class="col-md-6">
                <img src="" alt="" class="img-fluid zoom" id="mainimg"onclick='store("doublebed")'>
            </div>
        </div>
      
  <div class="row align-items-center content mar" width="200">

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="" class="d-block w-100" alt="..." width="200" height="700" id="img1">
    </div>
    <div class="carousel-item">
      <img src="" class="d-block w-100" alt="..." id="img2" width="200" height="700">
    </div>
    <div class="carousel-item">
      <img src="imgs/bathroom.jpg" class="d-block w-100" alt="..." id="img3" width="200" height="700">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
<div class="footer"><p>footer</p></div>

<script>

var bed = sessionStorage.getItem("bed");
var head=sessionStorage.getItem("head");
console.log(bed+"hiii"+head);
document.getElementById("img1").src="imgs/"+bed+"1.jpg";
document.getElementById("img2").src="imgs/"+bed+"2.jpg";
document.getElementById("mainimg").src="imgs/"+bed+".jpg";
document.getElementById("head").innerHTML =head;
	  </script>
</body>
</html>