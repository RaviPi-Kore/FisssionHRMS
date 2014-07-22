<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!--  navbar starts -->
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<%=request.getContextPath()%>/">HRMS</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
<%// if(request.isUserInRole("admin")){%>          
          
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Employee <b class="caret"></b></a>
	              <ul class="dropdown-menu">
	                <li><a href="<%=request.getContextPath()%>/employee/create">Create Employee</a></li>
	                <li><a href="<%=request.getContextPath()%>/employee/list">List Employees</a></li>
	              </ul>	
            </li>
            
<%--      	    <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Team <b class="caret"></b></a>
              <ul class="dropdown-menu">
              		<li><a href="<%=request.getContextPath()%>/team/create">Create Team</a></li>
	                <li><a href="<%=request.getContextPath()%>/team/list">List Teams</a></li>
              </ul>
            </li>
 --%>      	    
      	    <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Leaves<b class="caret"></b></a>
              <ul class="dropdown-menu">
              		<li><a href="<%=request.getContextPath()%>/leave/details/all">Leave Details</a></li>
              </ul>
            </li>
<%// } %>
       	    <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Assets<b class="caret"></b></a>
              <ul class="dropdown-menu">
              		<li><a href="<%=request.getContextPath()%>/assets/holders">Asset Holders</a></li>
              </ul>
            </li>

       	    <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown">Reports<b class="caret"></b></a>
              <ul class="dropdown-menu">
              		<li><a href="<%=request.getContextPath()%>/reports/employee">Export Employee Data</a></li>
              		<li><a href="<%=request.getContextPath()%>/reports/assets">Export Asset Data</a></li>
              </ul>
            </li>

          </ul>
          
          <ul class="nav navbar-nav" style="float: right;">
       	    <li class="dropdown" style="float: right;width: 82px;height: 50px;">
				<button type="button" class="btn btn-link" style="margin-top: 10%" onclick="logout()">
					<span class="glyphicon glyphicon-log-out"></span> logout
				</button>
            </li>
          </ul>
        
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
 <!--  navbar ends -->
 <!--  Developed By Yashaswi Kumar < yashaswi.kumar@fissionlabs.in > -->