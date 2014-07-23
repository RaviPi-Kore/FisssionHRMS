<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="taglib_includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Log-in - CodePen</title>

    <link rel="stylesheet" href="css/loginstyle.css" media="screen" type="text/css"  />


</head>
<body>

<div class="login-card" style="margin-top: 105px;">
<span><img alt="logo" src="logo.png" style="width: 233px;height: 47px;margin-left: 29px;"></span>
<br>
<br>
  <form:form id="login" action="login.do" method="post"
				commandName="loginDetails">

  <div>
  <span style="margin-right: 32px">Username</span><form:input path="username" type="text"  />
   <span style="margin-right: 34px">Password</span><form:input path="password" type="password" />
    <br>
    <input type="submit" name="login" class="login login-submit" value="login">
    </div>
  </form:form>
</div>



</body>
</html>