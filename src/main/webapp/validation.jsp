 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <h2>Coupon Validation Check</h2>
  <form role="form" name="validform" action="ValidationCheck">
    <div class="form-group">
      <label for="couponID">CouponID:</label>
      <input type="text" class="form-control" id="VC" name="VC" placeholder="Enter Coupon ID" value="${coid}" required>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  <br></br>
  Coupon Status: <input type="text" class="form-control" id="Cstatus" name="Cstatus" value="${message}">
  <br></br>
  Expiration Time: <input type="text" class="form-control" id="expirationtime" name="expirationtime" value="${expiration}">
</div>
<script>
$("#validform").validate();
</script>
</body>
</html>
