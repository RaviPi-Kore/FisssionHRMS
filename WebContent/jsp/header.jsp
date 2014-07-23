<%@include file="taglib_includes.jsp"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Fission Header</title>

<style type="text/css">
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,font,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td
	{
	background: transparent;
	border: 0;
	margin: 0;
	padding: 0;
	vertical-align: baseline;
	
	
}

header {
	padding: 0 0;
	background: #E63737;
	margin: 0 auto;
	height: 90px;
	width: 100%;
	z-index: 1000;
	
}

.menuStyles {
	text-decoration: none;
	color: #b4b4b4;
	cursor: pointer
}

#navigation {
	width: 90%;
	margin: 0 auto;
	padding: 10px 0;
	position: relative;
	min-height: 70px;
	
}

.logo {
	position: absolute;
	left: 0px;
	width: 200px;
}

.topNavigation {
	margin-left: 58%;
	margin-top: 23px;
	
}

ul {
	list-style: none;
	font-family: sans-serif;
	font-size: 13px;
	
}

ul li {
	float: left;
	width: 100px;
	text-align: center;
	line-height: 21px;
	
	}

ul li a {
	display: block;
	padding: 5px 10px;
	text-decoration: none;
	color:white;
	font-family: sans-serif;
	font-size: 15px;
	font-weight : 700;
}

ul li a:hover {
	text-decoration: none;
}

ul li ul {
	display: none;
}

ul li:hover ul {
	display: block; /* display the dropdown */
	
}
</style>

</head>

<header>
	<!--navigation div starts here-->
	<div id="navigation">
		<div class="logo">
			<img src="img/fission-logo.png"
				style="height: 55px; padding-top: 10px;">
		</div>
		<div class="topNavigation">
			<ul>
				<li style="width: 140px;"><a href="#">Employee&#9662;</a>
				<ul>
						<li style="display:block; background: #E52635;width: 140px; "><a href='<spring:message code="App.Url"></spring:message>/viewallEmployees'>Employees&nbsp;List</a></li><br>
						<li style="display:block; background: #E52635;width: 140px; "><a href="<spring:message code="App.Url"></spring:message>/addEmployee">Add&nbsp;Employee</a></li>
						
					</ul></li>
				<li><a href="#">Leaves</a></li>
				<li style="width: 125px"><a href="#">Assets &#9662;</a>
					<ul>
						<li style="background: #E52635;width: 125px;"><a href="#">Laptops</a></li>
						<li style="background: #E52635;width: 125px;"><a href="#">Mobiles</a></li>
						<li style="background: #E52635;width: 125px;"><a href="#">DataCards</a></li>
					</ul></li>
				<li><a href="#">Logout</a></li>
			</ul>

		</div>


	</div>
	<!--navigation div ends here-->
</header>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/bootstrapHoverDropdown.js"></script>

<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<!-- <link rel="stylesheet" type="text/css" href="css/theme.css"> -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/holder.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

</html>