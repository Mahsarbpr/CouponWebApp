<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Read Coupon information</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
  <link rel="stylesheet" href="css/zebra/default.css" type="text/css">
  <style>
	.form-control {display:inline; width:30%;}
	.labels {display: block}
	.datepicker {width:100%;}
	.valid {color: Green}
	.error {color: red}
  </style>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
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
                <li><a href="CWAclientA.jsp">Home</a></li>
				<li><a href="CWAaddcoupon.jsp">Add Coupon</a></li>
                <li class="active"><a href="CWACreadcoupon.jsp">Read Coupon</a></li>
				<li><a href="CWCcart.jsp">Shopping Cart</a></li>
                <li><a href="CWACvalidatecoupon.jsp">Validate Coupon</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Find Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="CWCfindbytime.jsp">Find Coupon by Time</a></li>
                    <li><a href="CWCfindforitem.jsp">Find Coupon by Item Name</a></li>
                  </ul>
                </li>             
				<li><a href="CWAdelcoupon.jsp">Delete Coupon</a></li>   
			</ul>
<!-- 				<ul class="nav navbar-nav navbar-right">
				<li><a href="CWCsignup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="CWClogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
	 -->			
			</div>        
		</div>
        </nav>
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
  <hr class="featurette-divider">
    <div class="container marketing">
  <h2>Read Coupon information</h2>
  <form role="form" name="readform" action="ReadCouponServlet">
    <div class="form-group">
      <label for="couponID" class='labels'>CouponID:</label>
      <input type="text" class="form-control" id="ID" name="ID" placeholder="Enter Coupon ID" value="${id}" required>
    </div>
  <button type="submit" class="btn btn-default">Submit</button>

	<br></br>
	<div class="form-group">
      <label for="Cstatus" class='labels'>Message:</label>
  		<input type="text" class="form-control" id="Cstatus" name="Cstatus" value="${message}">	
  	</div>	  
 <div class="form-group">
      <label for="in" class='labels'>Item name:</label>
  	<input type="text" class="form-control" id="in" name="in" value="${in}">
  </div>
  <div class="form-group">
      <label for="dis" class='labels'>Discount:</label>
  	<input type="text" class="form-control" id="dis" name="dis" value="${dis}">
  </div>
  <div class="form-group">
      <label for="ti1" class='labels'>Coupon Starting date:</label>
  		<input type="text" class="form-control" id="ti1" name="ti1" value="${ti1}">
  </div>
  <div class="form-group">
      <label for="ti2" class='labels'>Coupon expiration date:</label>
 		<input type="text" class="form-control" id="ti2" name="ti2" value="${ti2}">
  </div>
  </form>
	</div>
<script>
$("#readform").validate();
</script>

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
