<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Single Coupon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  -->
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
 <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="js/jquery.validate.js"></script>
</head>
<body>

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