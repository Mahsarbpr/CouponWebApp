<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Single Coupon</title>
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
				<li class="active"><a href="CWAaddcoupon.jsp">Add Single Coupon</a></li>
                <li><a href="CWACreadcoupon.jsp">Read Coupon</a></li>
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
				<li><a href="CWsignup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="CWlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
	 -->			
			</div>        
		</div>
        </nav>
	  <hr class="featurette-divider">
	<div class="container">
		<h2>Coupon Information</h2>
		<form role="form" id='Addform' name="Addform" action="http://localhost:8080/coupon-webservice/webapi/myresource/CreateCoupon" method="POST">
		<!-- 	<div class="form-group">
				<label for="varID" class='labels'>CouponID:</label>
				<input type="number" maxlength="3" class="form-control" id="varID" name="varID" placeholder="Enter Coupon ID">
				<label id="varID-error" class="error valid" for="varID"></label>
			</div>  -->
			<div class="form-group">
				<label for="vardiscount" class='labels'>Coupon Discount:</label>
				<input type="number" maxlength='3' class="form-control" id="vardiscount" name="vardiscount" placeholder="Enter Coupon discount">
				<label id="vardiscount-error" class="error valid" for="vardiscount"></label>
				<p>-enter 20 if coupon is like 20% off</p>
				<p>-enter 2 if coupon is like buy two get one free</p>
				<p>-enter 10 if coupon is like 10$ off</p>
			</div>
			<div class="form-group">
				<label for="vartype" class='labels'>Coupon Type:</label>
				<input type="number" maxlength='1' class="form-control" id="vartype" name="vartype" placeholder="Enter Coupon Type">
				<label id="vartype-error" class="error valid" for="vartype"></label>
				<p>-enter 1 if coupon is like 20% off</p>
				<p>-enter 2 if coupon is like buy two get one free</p>
				<p>-enter 3 if coupon is like 10$ off</p>
			</div>
			<div class="form-group">
				<label for="varItmnm" class='labels'>Item name for Coupon:</label>
				<input type="text" class="form-control" id="varItmnm" name="varItmnm" placeholder="Enter Item name">
				<label id="varItmnm-error" class="error valid" for="varItmnm"></label>
			</div>
			<div class="form-group">
				<label for="varItmid" class='labels'>Item ID:</label>
				<input type="number" maxlength='3' class="form-control" id="varItmid" name="varItmid" placeholder="Enter Item ID">
				<label id="varItmid-error" class="error valid" for="varItmid"></label>
			</div>
			<div class="form-group">
				<label for="vartime1" class='labels'>Start Date:</label>
				<input type="text" class="form-control datepicker" id="vartime1" name="vartime1" placeholder="yyyy-mm-dd">
				<label id="vartime1-error" class="error valid" for="vartime1"></label>
			</div>
			<div class="form-group">
				<label for="vartime2" class='labels'>Expiration date:</label>
				<input type="text" class="form-control datepicker" id="vartime2" name="vartime2" placeholder="yyyy-mm-dd">
				<label id="vartime2-error" class="error valid" for="vartime2"></label>
			</div>
			<input type="submit" value="Submit!">
			<!--<button type="submit" class="btn btn-default">Submit</button>-->
				<br></br>			
		</form>
	</div>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/zebra_datepicker.js"></script>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
	<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

	
	<script>
		$(document).ready(function() {
			$('input.datepicker').Zebra_DatePicker({
				//direction: true
			});
			//console.log('hi');
			$( "#Addform" ).validate({
				rules: {
//					varID: {
//						required: true,
//						digits: true
//					},
					varItmid: {
						required: true,
						digits: true
					},
					vardiscount: {
						required: true,
						digits: true
					},
					vartype: {
						required: true,
						digits: true
					},
					vartime1: {
						required: true
					},
					vartime2: {
						required: true
					}
				}
			});
		});
	</script> 
</body>
</html>