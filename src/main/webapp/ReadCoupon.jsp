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

</head>
<body>

<div class="container">
  <h2>Coupon Information</h2>
  <form role="form" name="readform" action="ReadCouponServlet">
    <div class="form-group">
      <label for="couponID">CouponID:</label>
      <input type="text" class="form-control" id="ID" name="ID" placeholder="Enter Coupon ID" value="${id}" required>
    </div>
  <button type="submit" class="btn btn-default">Submit</button>
  <br></br>
  Item name: <input type="text" class="form-control" id="in" name="in" value="${in}">
  <br></br>
  Coupon start time: <input type="text" class="form-control" id="ti1" name="ti1" value="${ti1}">
  <br></br>
  Coupon expiration time: <input type="text" class="form-control" id="ti2" name="ti2" value="${ti2}">
  </form>
 </div>
 <script>
$("#readform").validate();
</script>
</body>
</html>
 