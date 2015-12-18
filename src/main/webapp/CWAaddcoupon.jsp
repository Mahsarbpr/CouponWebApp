<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

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
<div class="container id="main">
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Coupon Web Application</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="CWAclientA.jsp">Home</a></li>
				<li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Add Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
				<li class="active"><a href="CWAaddcoupon.jsp">Add Single Coupon</a></li>
				<li><a href="CWAaddcoupon.jsp">Add Coupon File</a></li>
				</ul>
				</li>
                <li><a href="CWACreadcoupon.jsp">Read Coupon</a></li>
				<li><a href="CWAupdatecoupon.jsp">Update Coupon</a></li>
				<li><a href="CWAcart.jsp">Shopping Cart</a></li>
                <li><a href="CWACvalidatecoupon.jsp">Validate Coupon</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Find Coupon <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Find Coupon by Time</a></li>
                    <li><a href="#">Find Coupon by Item Name</a></li>
					<li><a href="#">Find Coupon by whatever</a></li>
                  </ul>
                </li>             
				<li><a href="CWAdelcoupon.jsp">Delete Coupon</a></li>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="CWlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
				</ul>
			</div>        
		</div>
        </nav>
      </div>
    
	</div>
<div class="container">
  <h2>Coupon Information</h2>
  <form role="form" name="Addform" action="http://localhost:8080/coupon-webservice/webapi/myresource/CreateCoupon" method="POST">
    <div class="form-group">
      <label for="varID">CouponID:</label>
      <input type="text" class="form-control" id="varID" name="varID" placeholder="Enter Coupon ID" required>
    </div>
  	<div class="form-group">
      <label for="vardiscount">Coupon Discount:</label>
      <input type="text" class="form-control" id="vardiscount" name="vardiscount" placeholder="Enter Coupon discount" required>
    </div>
    <div class="form-group">
      <label for="vartype">Coupon Type:</label>
      <input type="text" class="form-control" id="vartype" name="vartype" placeholder="Enter Coupon Type" required>
    </div>
    <div class="form-group">
      <label for="varItmnm">Item name for Coupon:</label>
      <input type="text" class="form-control" id="varItmnm" name="varItmnm" placeholder="Enter Item name" required>
    </div>
    <div class="form-group">
      <label for="varItmid">Item ID:</label>
      <input type="text" class="form-control" id="varItmid" name="varItmid" placeholder="Enter Item ID" required>
    </div>
    <div class="form-group">
      <label for="vartime1">Start Date:</label>
      <input type="text" class="form-control" id="vartime1" name="vartime1" placeholder="yyyy-mm-dd" required>
    </div>
    <div class="form-group">
      <label for="vartime2">Expiration date:</label>
      <input type="text" class="form-control" id="vartime2" name="vartime2" placeholder="yyyy-mm-dd" required>
    </div>
  <button type="submit" class="btn btn-default">Submit</button>
  </form>
 </div>
 <script>
$("#Addform").validate();
</script>
</body>
</html>