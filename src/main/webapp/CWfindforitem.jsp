<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Project</title>
	<link rel="stylesheet" href="css/zebra/default.css" type="text/css">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/jquery-ui.min.css" rel="stylesheet" media="screen">	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/dt/jszip-2.5.0,pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-flash-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,kt-2.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.css"/>
</head>
<body style="cursor: auto; overflow-y: scroll;">
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
                    <li class="active"><a href="CWfindforitem.jsp">Find Coupon by Item Name</a></li>
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
        <hr class="featurette-divider">
	<div  class="container-fluid">
		<div class="row">
			<br /><br />
			<div class="col-xs-12 col-md-12" role="main">
				<span>Item name: </span><input type="text" id='txt' />
				<input onclick='checkTable()' type='button' value='Search!' />
				<br /><br /><br /><br />
				<table id="example" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th>CouponID</th>
							<th>CouponType</th>
							<th>Discount</th>
							<th>Itemname</th>
							<th>ItemID</th>
							<th>ValidTime1</th>
							<th>ValidTime2</th>
						</tr>
					</thead>
					<tbody>	
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- plugins -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/zebra_datepicker.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/s/dt/jszip-2.5.0,pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-flash-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,kt-2.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.js"></script>
	<script>
		function var_dump(obj, indentSpaces) {
	    	switch (typeof obj) {
	        	case "object":
	            	console.log(indent(indentSpaces) + typeof obj + ":");
	            	indentSpaces += 2; // indent further as we are entering the objects properties
	            	for (var i in obj) {
	                	console.log(indent(indentSpaces) + i + ":");
	                	var_dump(obj[i], indentSpaces + 1);
	            	}
	            	break;
	        	default: // things that are not objects, primatives... etc...
	            	console.log(indent(indentSpaces) + typeof obj + ":" + obj);
	            	break;
	    	}
		}
		// just for styling with indents
		function indent(spaces) {
	    	var i = 0;
	    	var rtr = "";
	    	while(i <= (spaces * 2)) {
	        	rtr += " ";
	        	i++;
	    	}
	    	return rtr;
		}
		function fillTable(jsonData)
		{
			//var_dump(jsonData);
			var table = $('#example').DataTable();
			table.clear().draw();
			var count = jsonData.length;
			for(var i=0; i<count; i++)
			{
				table.row.add([
					jsonData[i].CouponID,
					jsonData[i].CouponType,
					jsonData[i].Discount,
					jsonData[i].Itemname,
					jsonData[i].ItemID,
					jsonData[i].ValidTime1,
					jsonData[i].ValidTime2
				] ).draw( false );
			}
		}
		function clearTable()
		{
			var table = $('#example').DataTable();
			table.clear().draw();
		}
		function checkTable()
		{
			var input = $('#txt').val();
			if(input != '')
			{
				//var json = '[{"CouponID":11,"Discount":11.0,"CouponType":1,"Itemname":"item11","ItemID":0,"ValidTime1":"2016-01-09T00:00:00","ValidTime2":"2016-01-16T00:00:00","couponID":11,"couponType":1,"discount":11.0,"itemID":0,"itemname":"item11","validTime1":"2016-01-09T00:00:00","validTime2":"2016-01-16T00:00:00"},{"CouponID":13,"Discount":13.0,"CouponType":1,"Itemname":"item13","ItemID":0,"ValidTime1":"2016-01-09T00:00:00","ValidTime2":"2017-01-09T00:00:00","couponID":13,"couponType":1,"discount":13.0,"itemID":0,"itemname":"item13","validTime1":"2016-01-09T00:00:00","validTime2":"2017-01-09T00:00:00"}]';
				//var jsonData = jQuery.parseJSON(json);
				$.ajax({
					url: "http://localhost:8080/coupon-webservice/webapi/myresource/FindCouponForItem",
					type: "get",
					data: { 'var': input},
					dataType:"json",
					async: false,
					success: function (response) {
						var jsonData = response;
						if(jsonData != '')
						{
							fillTable(jsonData);
						}
						else
						{
							clearTable();
							console.log('error');
						}
						console.log(response.responseText);
					},
					error: function (jqXHR, exception) {
						var msg = '';
						if (jqXHR.status === 0) {
							msg = 'Not connect.\n Verify Network.';
						} else if (jqXHR.status == 404) {
							msg = 'Requested page not found. [404]';
						} else if (jqXHR.status == 500) {
							msg = 'Internal Server Error [500].';
						} else if (exception === 'parsererror') {
							msg = 'Requested JSON parse failed.';
						} else if (exception === 'timeout') {
							msg = 'Time out error.';
						} else if (exception === 'abort') {
							msg = 'Ajax request aborted.';
						} else {
							msg = 'Uncaught Error.\n' + jqXHR.responseText;
						}
						console.log(msg);
					},
				});
			}
		}
		$(document).ready(function() {
			//$('input.text').Zebra_DatePicker({
				//direction: true
			//});
			$('#example').DataTable( {
				"paging":   true,
				"searching":   true,
				"ordering": true,
				"info":     true
			} );
		});
	</script>
</body>
</html>