<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="taglib_includes.jsp"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Fission Header</title>

</head>
<link rel="stylesheet" type="text/css" href="css/layout.css">

<header style="margin-top: 0px;">
			<!--navigation div starts here-->
			<div id="navigation">
				<div class="logo">
					<img src="img/fission-logo.png" style="height: 55px; padding-top: 17px;">
				</div>
				<div class="topNavigation">
					<ul id="menu">
						
						<li>
						<div class="btn-group">
            <div data-toggle="dropdown" data-hover="dropdown"   class="menuStyles">Employee</div>
            <ul class="dropdown-menu">
                <li><a href="<spring:message code="App.Url"></spring:message>/viewallEmployees">List of Employees</a></li>
                <li><a href="<spring:message code="App.Url"></spring:message>/addEmployee">New Employee</a></li>
                
            </ul>
        </div>
						</li>
						<li>
						<div class="btn-group">
            <div data-toggle="dropdown" data-hover="dropdown"  class="menuStyles">Leaves</div>
            <ul class="dropdown-menu">
                <li><a href="#">Item 1</a></li>
                <li><a href="#">Item 2</a></li>
                
            </ul>
        </div>
						</li>
						
						<li><a href="#" target="_new">Assets</a></li>
						<li><a href="#" target="_new">Contact</a></li>
						<li><a href="<spring:message code="App.Url"></spring:message>/login" id="login">LOGOUT</a></li>
					</ul>
				</div>
				
				
			</div>
			<!--navigation div ends here-->
		</header>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/bootstrapHoverDropdown.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<!-- <link rel="stylesheet" type="text/css" href="css/theme.css"> -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/holder.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

</html>