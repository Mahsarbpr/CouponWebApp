# Coupon Web application
The Coupon web application is going to show
possible uses of the Coupon web service, services are adding coupon, deleting coupon, get coupon
information, getting coupon type and discount, searching coupons in specific date,
searching coupon for specific item, validating a coupon.

Each time calling for web serivce we need to define a client. Passing the URI
of the service, this client will return the expected result. Here is the example of
client code:

Client client= ClientBuilder.newClient();

Coupon cc=client.target("http://localhost:8080/coupon-
webservice/webapi/myresource/getcoupons").queryParam("var1",IID)
.request().get(Coupon.class);

Coupon Web Application Functionalities:
Validation check of a coupon, Shopping cart, Create Coupon, Delete Coupon, Read Coupon, 
Find Coupon with a specific feature, Login, Sign up.


