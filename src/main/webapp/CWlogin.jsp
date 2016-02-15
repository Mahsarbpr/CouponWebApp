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
                <li><a href="CWAhome.jsp">Home</a></li>
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
				<li class="active"><a href="CWlogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
				
			</div>        
		</div>
        </nav>
	<hr class="featurette-divider">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 panel panel-default">

				<h1 class="margin-base-vertical">Login</h1>
				<form role="form" class="margin-base-vertical" action="LoginS" method="post">
					<p class="input-group">
						<span class="input-group-addon"></span>
						<input type="text" class="form-control input-lg" name="username" id="username" placeholder="Username" />
					</p>
					<p class="input-group">
						<span class="input-group-addon"></span>
						<input type="text" class="form-control input-lg" name="password" id="password" placeholder="Password" />
					</p>
					<p class="text-center">
						<button type="submit" class="btn btn-success btn-lg">Login</button>
					</p>
				</form>
			</div><!-- //main content -->
		</div><!-- //row -->
	</div> <!-- //container -->

</body>
</html>