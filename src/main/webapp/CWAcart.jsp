<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Shopping (Demo)</title>
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
                <li class="active"><a href="CWAcart.jsp">Shopping Cart</a></li>
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
        <hr class="featurette-divider">
        <hr class="featurette-divider">
        <h2>Smartphone shop (Demo)</h2>
	<div  class="container-fluid">
		<div class="row">
			<br /><br />
			<div class="col-xs-12 col-md-8" role="main">
			    <div style="border:1px solid #808080;">
					<br />
					<b>Color: </b><select id='fColor' onchange='filter()'>
						<option value="ca">All</option>
						<option value="cb">Black</option>
						<option value="cw">White</option>
					</select>
					<b>OS: </b><select id='fOS' onchange='filter()'>
						<option value="oa">All</option>
						<option value="o1">Android</option>
						<option value="o2">iOS</option>
						<option value="o3">Windows</option>
					</select>
					<b>Brand: </b><select id='fBrand' onchange='filter()'>
						<option value="ba">All</option>
						<option value="a">Apple</option>
						<option value="b">BlackBerry</option>
						<option value="h">HTC</option>
						<option value="l">LG</option>
						<option value="m">Microsoft</option>
						<option value="s">Samsung</option>
					</select>
					<b>Price: </b><select id='fPrice' onchange='filter()'>
						<option value="pa">All</option>
						<option value="p1">< $300</option>
						<option value="p2">$300 < < $500</option>
						<option value="p3">$500 < < $700</option>
						<option value="p4">> $700</option>
					</select>
					<br /><br />
				</div>
				<br />
				<div class="panel-group" id="01" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="items_header">
							<h4 class="panel-title">
								<div class="row">
									<div class="col-xs-6" role="complementary" style="text-align:left">
										<a role="button" data-toggle="collapse"  href="#items" aria-expanded="true" aria-controls="items">
											Products
										</a>
									</div>
									<div class="col-xs-6" role="complementary" style="text-align:right">
										<!--text-->
									</div>
								</div>
							</h4>
						</div>
						<div id="items" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="items_header">
							<div class="panel-body">
								<div class="panel-group" id="itemsList" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="item1_header">
											<h4 class="panel-title">
												<div class="row">
													<div class="col-xs-6" role="complementary" style="text-align:left">
														<a role="button" data-toggle="collapse"  href="#item1" aria-expanded="true" aria-controls="item1">
															Smart Phones
														</a>
													</div>
													<div class="col-xs-6" role="complementary" style="text-align:right">
														<!--Text-->
													</div>
												</div>
											</h4>
										</div>
										<div id="item1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="item1_header">
											<div class="panel-body">
												<section class="products s cb o1 p3">
													<div class="product ui-draggable" id="1" title="">
														<img class="pimg" src="img/1.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy s6</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$584</p>	
													</div>
												</section>
												<section class="products s cb o1 p4">
													<div class="product ui-draggable" id="2" title="">
														<img class="pimg" src="img/2.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy S6 Edge</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$714</p>	
													</div>
												</section>
												<section class="products s cw o1 p4">
													<div class="product ui-draggable" id="3" title="">
														<img class="pimg" src="img/3.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy S6 Edge +</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: White</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$814</p>	
													</div>
												</section>
												<section class="products s cb o1 p3">
													<div class="product ui-draggable" id="4" title="">
														<img class="pimg" src="img/4.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy S6 Active</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$594</p>	
													</div>
												</section>
												<section class="products s cb o1 p4">
													<div class="product ui-draggable" id="5" title="">
														<img class="pimg" src="img/5.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy Note5</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$839</p>	
													</div>
												</section>
												<section class="products h cb o1 p3">
													<div class="product ui-draggable" id="6" title="">
														<img class="pimg" src="img/6.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">HTC One A9</h2>
															<p class="id">Brand Name: HTC</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$519</p>	
													</div>
												</section>
												<section class="products a cb o2 p3">
													<div class="product ui-draggable" id="7" title="">
														<img class="pimg" src="img/7.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Apple iPhone 6S</h2>
															<p class="id">Brand Name: Apple</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: iOS</p>
														</div>
														<p class="price">$649</p>	
													</div>
												</section>
												<section class="products a cb o2 p4">
													<div class="product ui-draggable" id="8" title="">
														<img class="pimg" src="img/8.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Apple iPhone 6S Plus</h2>
															<p class="id">Brand Name: Apple</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: iOS</p>
														</div>
														<p class="price">$749</p>	
													</div>
												</section>
												<section class="products a cb o2 p3">
													<div class="product ui-draggable" id="9" title="">
														<img class="pimg" src="img/9.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Apple iPhone 6</h2>
															<p class="id">Brand Name: Apple</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: iOS</p>
														</div>
														<p class="price">$549</p>	
													</div>
												</section>
												<section class="products a cb o2 p2">
													<div class="product ui-draggable" id="10" title="">
														<img class="pimg" src="img/10.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Apple iPhone 5S</h2>
															<p class="id">Brand Name: Apple</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: iOS</p>
														</div>
														<p class="price">$449</p>	
													</div>
												</section>
												<section class="products s cb o1 p3">
													<div class="product ui-draggable" id="11" title="">
														<img class="pimg" src="img/11.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy S5</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$519</p>	
													</div>
												</section>
												<section class="products m cb o3 p3">
													<div class="product ui-draggable" id="12" title="">
														<img class="pimg" src="img/12.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Microsoft Lumia 950</h2>
															<p class="id">Brand Name: Microsoft</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Windows 10</p>
														</div>
														<p class="price">$598</p>	
													</div>
												</section>
												<section class="products a cb o2 p3">
													<div class="product ui-draggable" id="13" title="">
														<img class="pimg" src="img/13.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Apple iPhone 6 Plus</h2>
															<p class="id">Brand Name: Apple</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: iOS</p>
														</div>
														<p class="price">$649</p>	
													</div>
												</section>
												<section class="products l cw o1 p3">
													<div class="product ui-draggable" id="14" title="">
														<img class="pimg" src="img/14.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG V10</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: White</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$699</p>	
													</div>
												</section>
												<section class="products b cb o1 p4">
													<div class="product ui-draggable" id="15" title="">
														<img class="pimg" src="img/15.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">BlackBerry PRIV</h2>
															<p class="id">Brand Name: BlackBerry</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$739</p>	
													</div>
												</section>
												<section class="products l cb o1 p2">
													<div class="product ui-draggable" id="16" title="">
														<img class="pimg" src="img/16.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG G Vista2</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$348</p>	
													</div>
												</section>
												<section class="products l cb o1 p2">
													<div class="product ui-draggable" id="17" title="">
														<img class="pimg" src="img/17.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG G Flex2</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$399</p>	
													</div>
												</section>
												<section class="products l cb o1 p2">
													<div class="product ui-draggable" id="18" title="">
														<img class="pimg" src="img/18.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG G4</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$462</p>	
													</div>
												</section>
												<section class="products s cb o1 p2">
													<div class="product ui-draggable" id="20" title="">
														<img class="pimg" src="img/20.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Samsung Galaxy Note Edge</h2>
															<p class="id">Brand Name: Samsung</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$499</p>	
													</div>
												</section>
												<section class="products m cb o3 p1">
													<div class="product ui-draggable" id="21" title="">
														<img class="pimg" src="img/21.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">Microsoft Lumia 640 XL</h2>
															<p class="id">Brand Name: Microsoft</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Windows 8</p>
														</div>
														<p class="price">$249</p>	
													</div>
												</section>
												<section class="products h cw o1 p3">
													<div class="product ui-draggable" id="22" title="">
														<img class="pimg" src="img/22.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">HTC One M9</h2>
															<p class="id">Brand Name: HTC</p>
															<p class="product-type">Color: White</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$589</p>	
													</div>
												</section>
												<section class="products h cw o1 p1">
													<div class="product ui-draggable" id="23" title="">
														<img class="pimg" src="img/23.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">HTC Desire 626</h2>
															<p class="id">Brand Name: HTC</p>
															<p class="product-type">Color: White</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$184</p>	
													</div>
												</section>
												<section class="products l cb o1 p1">
													<div class="product ui-draggable" id="24" title="">
														<img class="pimg" src="img/24.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG Escape2</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$179</p>	
													</div>
												</section>
												<section class="products b cb o1 p2">
													<div class="product ui-draggable" id="25" title="">
														<img class="pimg" src="img/25.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">BlackBerry Passport</h2>
															<p class="id">Brand Name: ?BlackBerry</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$499</p>	
													</div>
												</section>
												<section class="products b cb o1 p2">
													<div class="product ui-draggable" id="26" title="">
														<img class="pimg" src="img/26.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">BlackBerry Classic</h2>
															<p class="id">Brand Name: BlackBerry</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$439</p>	
													</div>
												</section>
												<section class="products l cb o1 p2">
													<div class="product ui-draggable" id="27" title="">
														<img class="pimg" src="img/27.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">LG G2</h2>
															<p class="id">Brand Name: LG</p>
															<p class="product-type">Color: Black</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$478</p>	
													</div>
												</section>
												<section class="products h cw o1 p1">
													<div class="product ui-draggable" id="28" title="">
														<img class="pimg" src="img/28.jpg" width="165" height="198" alt="">
														<div class="product-info">
															<h2 class="product-title">HTC Desire Eye</h2>
															<p class="id">HTC</p>
															<p class="product-type">Color: White</p>
															<p class="product-description">OS: Android</p>
														</div>
														<p class="price">$279</p>	
													</div>
												</section>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-4" style="padding-right:0; padding-left:0">
				<div id="followbox"></div>
				<div id='cart' style="margin-right:10px">
				<h2>Your Shopping Cart</h2>
				<p align="justify">As you browse through the product listing, you can add your items to the shopping cart by dragging them into the box below.</p>
				<div class="dropzone ui-droppable"><p>Drag items here to add them to your cart.</p></div>
				<table id="example" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Coupon</th>
							<th>Final</th>
						</tr>
					</thead>
					<tbody>	
					</tbody>
				</table>
				<br /><br />
				<table id="check" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th>Discount</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td id='totalDiscount'>$0</td>
							<td id='totalPrice'>$0</td>
						</tr>
					</tbody>
				</table>
				<br />
				<br />
				<span>Delivery Date: </span><input type="text" class="datepicker" />
				</div>
			</div>
		</div>
	</div>
	<!-- plugins -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/zebra_datepicker.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.jfollow.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/s/dt/jszip-2.5.0,pdfmake-0.1.18,dt-1.10.10,af-2.1.0,b-1.1.0,b-colvis-1.1.0,b-flash-1.1.0,b-html5-1.1.0,b-print-1.1.0,cr-1.3.0,fc-3.2.0,fh-3.1.0,kt-2.1.0,r-2.0.0,rr-1.1.0,sc-1.4.0,se-1.1.0/datatables.min.js"></script>
	<script>
		var itemP;
		function filter()
		{
			//alert($("#fColor").val());
			var price = $("#fPrice").val();
			var color = $("#fColor").val();
			var iOS = $("#fOS").val();
			var brand = $("#fBrand").val();
			var classes = "";
			if(price != "pa")
				classes = classes+"."+price;
			if(color != "ca")
				classes = classes+"."+color;	
			if(brand != "ba")
				classes = classes+"."+brand;
			if(iOS != "oa")
				classes = classes+"."+iOS;
			if(classes == "")
				$(".products").show();
			else
			{
				$(".products").hide();
				$(classes).show();
			}
		}
		function totalZero(arg)
		{
			if(arg < 0)
				return 0;
			else
				return arg;
		}
		function returnPrecision(intArg)
		{
			precision = intArg.toString().indexOf(".")+2;
			if(precision > 2)
				return intArg.toPrecision(precision);
			else
				return intArg;
		}
		function isInteger(n)
		{
			return n === +n && n === (n|0);
		}
		function removeTR(el)
		{
			var singlePrice, price, quantity, finalPrice, discount, totalDiscount;
			var id = $(el).parent().closest('tr').attr('id');
			singlePrice = $("#"+id).children(".priceD").text();
			singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
			price = $("#"+id).children(".finalPrice").text();
			price = parseFloat(price.substring(1, price.length));
			quantity = parseInt($("#"+id).children(".quantity").children('input').val());
			totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
			totalPrice -= price;
			$('#totalPrice').text("$"+totalZero(returnPrecision(totalPrice)));
			finalPrice = quantity*singlePrice;
			discount = returnPrecision(finalPrice) - price;
			totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
			if(isNaN(totalDiscount))
				totalDiscount = 0;
			totalDiscount -= discount;
			$('#totalDiscount').text("$"+totalZero(returnPrecision(totalDiscount)));
			var table = $('#example').DataTable();
			table.row('#'+id).remove().draw( false );
		}
		function quantityChange(el) 
		{
			var quantity = parseInt($(el).val());
			if(isInteger(quantity))
			{
				var nowQuant = parseInt($(el).attr('qu'));
				if(quantity > nowQuant)
				{
					var price = $(el).parent().closest('tr').find('.priceD').text();
					price = parseFloat(price.substring(1, price.length));
					var quantDiff = quantity - nowQuant;
					changedPrice = price * quantDiff;
					var before = $(el).parent().closest('tr').find(".finalPrice").text();
					before = parseFloat(before.substring(1, before.length));
					$(el).parent().closest('tr').find(".finalPrice").text("$"+returnPrecision(changedPrice+before));
					var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
					totalPrice += changedPrice;
					$('#totalPrice').text("$"+returnPrecision(totalPrice));
					$(el).attr('qu', quantity);
				}
				else if(quantity < nowQuant)
				{
					var singlePrice, price, quantity, finalPrice, discount, totalDiscount;
					var id = $(el).parent().closest('tr').attr('id');
					singlePrice = $("#"+id).children(".priceD").text();
					singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
					price = $("#"+id).children(".finalPrice").text();
					price = parseFloat(price.substring(1, price.length));
					totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
					totalPrice -= price;
					finalPrice = quantity*singlePrice;
					totalPrice += finalPrice;
					$('#totalPrice').text("$"+returnPrecision(totalPrice));
					$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalPrice));
					discount = returnPrecision(nowQuant*singlePrice) - price;
					totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
					if(isNaN(totalDiscount))
						totalDiscount = 0;
					totalDiscount -= discount;
					$('#totalDiscount').text("$"+totalZero(returnPrecision(totalDiscount)));
					$(el).attr('qu', quantity);
				}
			}
			else
			{
				$(el).val($(el).attr('qu'));	
			}
		}
		function coupon(id, couponType, couponDiscount)
		{
			var price, changedPrice, diff, precision, totalPrice, totalDiscount, quantity, freeGift, singlePrice, finalPrice;
			var finalDiscount, totalDiff, firstDiscount, secondDiscount, diffDiscount;
			if(couponType == 1)
			{
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				finalDiscount = (finalPrice*(100-couponDiscount))/100;
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else if(couponType == 2)
			{
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				freeGift = Math.floor(quantity/couponDiscount);
				finalDiscount = finalPrice-(freeGift*singlePrice);
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else if(couponType == 3)
			{
				singlePrice = $("#"+id).children(".priceD").text();
				singlePrice = parseFloat(singlePrice.substring(1, singlePrice.length));
				price = $("#"+id).children(".finalPrice").text();
				price = parseFloat(price.substring(1, price.length));
				quantity = parseInt($("#"+id).children(".quantity").children('input').val());
				finalPrice = quantity*singlePrice;
				finalDiscount = finalPrice-(quantity*couponDiscount);
				totalDiff = finalDiscount - price;
				firstDiscount = finalPrice - price;
				secondDiscount = finalPrice - finalDiscount;
				diffDiscount = secondDiscount - firstDiscount;
				$("#"+id).children(".finalPrice").text("$"+returnPrecision(finalDiscount));
				totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
				totalPrice += totalDiff;
				$('#totalPrice').text("$"+returnPrecision(totalPrice));
				totalDiscount = parseFloat($('#totalDiscount').text().substring(1, $('#totalDiscount').text().length));
				if(isNaN(totalDiscount))
					totalDiscount = 0;
				totalDiscount += diffDiscount;
				$('#totalDiscount').text("$"+returnPrecision(totalDiscount));
			}
			else
			{
				console.log('error');
			}
		}
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
		function checkCoupon(el)
		{
			var id = $(el).parent().children('input').val();
			var name = $(el).parent().parent().attr('id');
			//console.log(name);
			$.ajax({
				url: "http://localhost:8080/coupon-webservice/webapi/myresource/getco",
				type: "get",
				data: { 'var1': id},
				dataType:"json",
				async: false,
				success: function (response) {
					var jsonData = response;
					if(jsonData != '')
					{
						var couponType = parseInt(jsonData.CouponType);
						var couponDiscount = parseInt(jsonData.Discount);
						coupon(name, couponType, couponDiscount);
					}
					else
					{
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
		$(document).ready(function() {
			$('#cart').jfollow('#followbox', 20);	
			$('input.datepicker').Zebra_DatePicker({
				direction: true
			});
			$('#check').DataTable( {
			"paging":   false,
			"searching":   false,
			"ordering": false,
			"info":     false,
			"columns": [
					{"width": "10%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" },
					{"width": "18%" }
				]
			} );
			$('#example').DataTable( {
				"order": [
					[1, 'desc']
				],
				"columnDefs": [
					{
						"targets": 3,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'quantity');
							var text = "<input onchange='quantityChange(this)' qu='1' maxlength='3' value='1' type='number' min='1' step='1' style='width:70%' />";
							$(td).append(text);
						}
					},
					{
						"targets": 5,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'finalPrice');
						}
					},
					{
						"targets": 2,
						"createdCell": function (td, cellData, rowData, row, col) {
							$(td).attr('class', 'priceD');
						}
					},
					{
						"targets": 0,
						"createdCell": function (td, cellData, rowData, row, col) {
							var text = "<a onclick = 'removeTR(this)' class='remove'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>";
							$(td).append(text);
						}
					}
				],
				"columns": [
					{ "orderable": false, "width": "10%" },
					{"width": "18%" },
					{"width": "18%" },
					{ "orderable": false, "width": "18%" },
					{ "orderable": false, "width": "18%" },
					{"width": "18%" }
				],
				"createdRow": function( row, data, dataIndex ) {
					//$(row).attr("id", data[1]);
					$(row).attr("id", itemP);
				},
				"paging":   false,
				"searching":   false,
				//"ordering": false,
				"info":     false,
				"drawCallback": function( settings ) {
					var api = this.api();
				}
			} );
			var table = $('#example').DataTable();
			$('.pimg').draggable({
				appendTo: 'body',
				helper: 'clone'		
			});
			$('.dropzone').droppable({
				tolerance: 'touch',
				activeClass: 'ui-state-default',
				hoverClass: 'ui-state-hover',
				accept: '.pimg',
				drop: function(event, ui){
					var item = $(ui.draggable).parent().closest('div').find('.product-title').text();
					var itemID = $(ui.draggable).parent().attr('id');
					itemP = "p"+itemID;
					var existsItem = $("#"+itemP).length; //age mojood nabashe
					if(!existsItem)
					{
						var price = $(ui.draggable).parent().closest('div').find('.price').text();
						table.row.add([
							'',
							item,
							price,
							'',
							"<button onclick='checkCoupon(this);' type='button' class='btn btn-default btn-xs'><span class='glyphicon glyphicon-tag' aria-hidden='true'></span> Coupon</button><input type='hidden' value='"+itemID+"' class='table-item' />",
							price
						] ).draw( false );
						var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
						if(isNaN(totalPrice))
							totalPrice = 0;
						totalPrice += parseFloat(price.substring(1, price.length));
						$('#totalPrice').text("$"+returnPrecision(totalPrice));
					}
					else
					{
						var count = parseInt($("#"+itemP).children(".quantity").find('input').val());
						count++;
						$("#"+itemP).children(".quantity").find('input').val(count);
						var price = $("#"+itemP).children(".priceD").text();
						price = parseFloat(price.substring(1, price.length));
						var finalPrice = $("#"+itemP).children(".finalPrice").text();
						finalPrice = parseFloat(finalPrice.substring(1, finalPrice.length));
						finalPrice += price;
						$("#"+itemP).children(".finalPrice").text("$"+returnPrecision(finalPrice));
						var totalPrice = parseFloat($('#totalPrice').text().substring(1, $('#totalPrice').text().length));
						totalPrice += price;
						$('#totalPrice').text("$"+returnPrecision(totalPrice));
					}
				}
			});
		});
	</script>
</body>
</html>