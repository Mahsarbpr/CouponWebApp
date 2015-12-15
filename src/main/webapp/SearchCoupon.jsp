<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  -->
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="js/jquery.validate.js"></script>
<script scr=""></script>
</head>
<body>

<div class="container">
  <h2>Search Coupon</h2>
  <form role="form" name="searchform" action="SearchCouponServlet">
    <div class="form-group">
    	<p>Searching coupon filters: </p>
    	<input type="radio" name="topic" id="RIN" checked> Search by Item Name
    	<input type="radio" name="topic" id="RCTN"> Search by CouponType
    	<input type="radio" name="topic" id="RTN"> Search by Time
    	<input type="radio" name="topic" id="RDN"> Search by Discount amount 
      <!--  <label for="couponID">CouponID:</label>
      
      <input type="text" class="form-control" id="ID" name="ID" placeholder="Enter Coupon ID" value="${id}" required>  -->
    <fieldset id="itembox">
    <label for="Citembox">
	Item name to search: <input type="text" id="Citembox" name="Citembox" value="Item name">
    </label>
    </fieldset>
    </div>
  <button type="submit" class="btn btn-default">Submit</button>
  </form>
 </div>
 <script>
$("#searchform").validate();
</script>
</body>
</html>
 