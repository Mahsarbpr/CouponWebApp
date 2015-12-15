<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.coupon.Coupon" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.ListIterator" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/s/dt/dt-1.10.10/datatables.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 	<script type="text/javascript" src="https://cdn.datatables.net/s/dt/dt-1.10.10/datatables.min.js"></script>

<script type="text/javascript"
charset="utf-8" src="/DataTables/media/js/jquery.js"></script>
<script type="text/javascript"
charset="utf-8" src="/DataTables/media/js/jquery.dataTables.js"></script>

<style type="text/css" title="currentStyle">
@import "../resources/css/demo_table.css";
</style>

</head>
<body>
<div class="container">
  <h2>Available Coupons for a certain Item</h2>
  <form role="form" action="AvailableCByItem">
    <div class="form-group">
      <!--<label for="SBT">Available coupon for this Item:</label>
        <input type="text" class="form-control" id="SBI" name="SBI" placeholder="Enter Item name" value="${NEWIN}">-->         
    <table id="testtable">
    
    </table> 
    
    <table cellpadding="0" cellspacing="0" border="0"
id="tableId">
<thead>
<tr>
<th width="10%">First Name</th>
<th width="10%">Last Name</th>
<th width="10%">Address 1</th>
<th width="10%">Address 2</th>
</tr>
</thead>
</table>
    
    </div>                    
 <button type="submit" class="btn btn-default">Submit</button>
 <!-- <input type="text" class="form-control" id="ati1" name="NEWati1" value="${NEWati1}">
<c:forEach var="urlIN" items="${webURLIN}" varStatus="loopCounter" >
    <c:out value="count: ${loopCounter.count}"/>
    <c:out value="${urlIN}"/>
</c:forEach> -->
</form>
 </div>

</body>


<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
var oTable = $('#tableId').dataTable( {
"processing": true,
"ajax": {
"url": "/AvailableCByItem",
"dataSrc": "demo",
"type": "GET"
}
} );
} );
</script>






<script type="text/javascript">
//alert("gh");
jQuery.support.cors =true;
$(document).ready(function(){
$("#testtable").DataTable({
data: [[
        "Airi",
        "Satou",
        "Accountant",
        "Tokyo",
        "28th Nov 08",
        "$162,700"
      ],
      [
        "Angelica",
        "Ramos",
        "Chief Executive Officer (CEO)",
        "London",
        "9th Oct 09",
        "$1,200,000"
      ],
      [
        "Ashton",
        "Cox",
        "Junior Technical Author",
        "San Francisco",
        "12th Jan 09",
        "$86,000"
      ],
      [
        "Bradley",
        "Greer",
        "Software Engineer",
        "London",
        "13th Oct 12",
        "$132,000"
      ],
      [
        "Brenden",
        "Wagner",
        "Software Engineer",
        "San Francisco",
        "7th Jun 11",
        "$206,850"
      ]],
columns:[{title:"id"},{title:"test"}]	
});
});
</script>
</html>
    