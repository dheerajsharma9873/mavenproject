<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register-ShoeRack</title>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
 	<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<link href="Resources/css/register.css">
</head>
<body style="background-color:#EEEEEE;">
		<div style="margin-top:20px;margin-left:50px;" class="container">
  <div  class="col-lg-12 well">	<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<img width="40%" class="img-responsive" src ="Resources/images/register_here.png"></img>
	                	</div>
	            </div> 
				
	<div class="row">
				<c:url var="url" value="/all/registerCustomer"></c:url>
                <form:form action="${url }" commandName="customer">
				
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								
                                <form:label path="firstname">First Name</form:label>
                                <div class="input-group">
							    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								<form:input path="firstname" placeholder="Enter First Name Here.." class="form-control"></form:input>
							</div>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="lastname">Last Name</form:label>
								<form:input path="lastname"  placeholder="Enter Last Name Here.." class="form-control"></form:input>
							</div>
						</div>	
					    <div class="row">
						<div class="col-sm-8 form-group">
						<form:label path="email">Email Address</form:label>
						<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
						<form:input path="email" placeholder="Enter Email Address Here.." class="form-control"></form:input>
					</div>
					</div>	
					<div class="col-sm-4 form-group">
						<form:label path="phonenumber">Mobile Number</form:label>
					    <div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-phone" aria-hidden="true"></i></span>
						<form:input path="phonenumber" placeholder="Enter Mobile Number Here.." class="form-control"></form:input>
					</div>
					</div>	
					</div>
					<div class="row">
					<div class="col-sm-6 form-group">
						<form:label path="users.username">User Name</form:label>
					    <div class="input-group">
						<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
						<form:input path="users.username" placeholder="Enter User Name Here.." class="form-control"></form:input>
					</div>
					</div>
					<div class="col-sm-6 form-group">
						<form:label path="users.password">Password</form:label>
					    <div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
						<form:input path="users.password" type="password" placeholder="Enter Password Here.." class="form-control"></form:input>
					</div>
					</div>			
					</div>
						<div class="form-group">
					    <form:label path="billingAddress.address">Billing Address</form:label>
						<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-globe" aria-hidden="true"></i></span>
						<form:textarea path="billingAddress.address" placeholder="Enter Billing Address Here.." rows="3" class="form-control"></form:textarea>
						</div>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="billingAddress.apartmentNumber">Apartment Number</form:label>
								<form:input path="billingAddress.apartmentNumber" placeholder="Enter Apartment Number Here.." class="form-control"></form:input>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="billingAddress.streetName">Street Name</form:label>
								<form:input path="billingAddress.streetName" placeholder="Enter Street Name Here.." class="form-control"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="billingAddress.city">City</form:label>
								<form:input path="billingAddress.city" placeholder="Enter City Here.." class="form-control"></form:input>
							</div>		
						</div>
						<div class="row">
								<div class="col-sm-4 form-group">
								<form:label path="billingAddress.state">State</form:label>
								<form:input path="billingAddress.state" placeholder="Enter State Here.." class="form-control"></form:input>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="billingAddress.country">Country</form:label>
								<form:input path="billingAddress.country" placeholder="Enter Country Here.." class="form-control"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="billingAddress.zipcode">Zipcode</form:label>
								<form:input path="billingAddress.zipcode" placeholder="Enter Zipcode Here.." class="form-control"></form:input>
							</div>
						</div>						
					<div class="form-group">
					    <form:label path="">Shipping Address</form:label>
						<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-globe" aria-hidden="true"></i></span>
						<form:textarea path="shippingAddress.address" placeholder="Enter Shipping Address Here.." rows="3" class="form-control"></form:textarea>
						</div>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.apartmentNumber">Apartment Number</form:label>
								<form:input path="shippingAddress.apartmentNumber" placeholder="Enter Apartment Number Here.." class="form-control"></form:input>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.streetName">Street Name</form:label>
								<form:input path="shippingAddress.streetName" placeholder="Enter Street Name Here.." class="form-control"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.city">City</form:label>
								<form:input path="shippingAddress.city" placeholder="Enter City Here.." class="form-control"></form:input>
							</div>		
						</div>
						<div class="row">
								<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.state">State</form:label>
								<form:input path="shippingAddress.state" placeholder="Enter State Here.." class="form-control"></form:input>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.country">Country</form:label>
								<form:input path="shippingAddress.country" placeholder="Enter Country Here.." class="form-control"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="shippingAddress.zipcode">Zipcode</form:label>
								<form:input path="shippingAddress.zipcode" placeholder="Enter Zipcode Here.." class="form-control"></form:input>
							</div>
						</div>						
						<input type="submit" value="Register" class="btn btn-primary btn-lg btn-block login-button">
						</div>
				</form:form>
				</div>
	</div>
	</div>
</body>
</html>