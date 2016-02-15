<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
<style>
.carousel-inner > .item > img{
       width:100%;
      max-height:700px; 
     }
</style>
    <title>Coupon Web Application</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="js/jquery.validate.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
 <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Coupon Web Application</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="CWAhome.jsp">Home</a></li>
                <li><a href="CWAcart.jsp">Shopping Cart</a></li>
                <li><a href="CWAvalidatecoupon.jsp">Validate Coupon</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Find Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="CWfindbytime.jsp">Find Coupon by Time</a></li>
                    <li><a href="CWfindforitem.jsp">Find Coupon by Item Name</a></li>
                  </ul>
                </li>             
			</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="CWsignup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="CWlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
				
			</div>        
		</div>
        </nav>
    
    <!-- Carousel
    ================================================== -->
    <hr class="featurette-divider">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Coupon Web Application</h1>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="8.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Read about Certain Coupon details </h1>
              <p><a class="btn btn-lg btn-primary" href="CWAreadcoupon.jsp" role="button">Go to details</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="forth-slide" src="5.jpg" alt="Forth slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Apply Coupon on your Shopping items</h1>
              <p><a class="btn btn-lg btn-primary" href="CWAcart.jsp" role="button">Go to shopping cart</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="fifth-slide" src="13.jpeg" alt="Fifth slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Coupon Validation Check</h1>
              <p><a class="btn btn-lg btn-primary" href="CWAvalidatecoupon.jsp" role="button">Go to page</a></p>
            </div>
          </div>
        </div>

        <div class="item">
          <img class="third-slide" src="2.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Find Coupons</h1>
              <p><a class="btn btn-lg btn-primary" href="CWfindbytime.jsp" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
