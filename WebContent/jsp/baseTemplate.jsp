<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jquery-ui.css">

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>

<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>

<link rel="shortcut icon" href="">
<!-- Bootstrap core JavaScript-->
<!-- Placed at the end of the document so the pages load faster -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="<%=request.getContextPath()%>/assets/js/html5shiv.js"></script>
      <script src="<%=request.getContextPath()%>/assets/js/respond.min.js"></script>
    <![endif]-->

<style id="holderjs-style" type="text/css">
.holderjs-fluid {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	font-family: sans-serif;
	margin: 0
}

#footer {
   position:fixed;
   left:0px;
   bottom:0px;
   height:30px;
   width:100%;
   background:#999;
}

/* IE 6 */
* html #footer {
   position:absolute;
   top:expression((0-(footer.offsetHeight)+(document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight)+(ignoreMe = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop))+'px');
}
</style>

<script type="text/javascript">	
	var _hermes = {};
	_hermes.appContext = '<%=request.getContextPath() %>';
</script>




</head>

<body style="">

<!-- navbar starts -->
<tiles:insertAttribute name="navbar" ignore="true"></tiles:insertAttribute>
<!--  navbar ends -->

<!-- container starts -->
<tiles:insertAttribute name="container" ignore="true"></tiles:insertAttribute>
<!-- conatainer ends -->
<!--  Developed By Yashaswi Kumar < yashaswi.kumar@fissionlabs.in > -->
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</html>