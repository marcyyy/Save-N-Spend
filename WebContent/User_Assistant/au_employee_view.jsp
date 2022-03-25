<!doctype html>
<html lang="en">
<title>Save and Spend | View Employee</title>
<link href="../assets/css/table.css" media="screen" rel="stylesheet" type="text/css" />
<jsp:include page="head.jsp"></jsp:include>
	<body>
		<div class="wrapper">
   	 		<div class="sidebar" data-background-color="white" data-active-color="danger">
    			<div class="sidebar-wrapper" style="height:100%; overflow-y: auto;">
        			<div class="logo">
       					<a href="au-home.jsp" class="simple-text">
       						<img style="width:100%" src="../assets/imgs/logo.png">
       					</a>
        			</div>
        				<ul class="nav">
       						<li>
        						<a href="au-home.jsp">
       								 <i class="ti-desktop"></i>
       		 						<p>Home</p>
       		 					</a>
       						</li>

                    <li class="menu-item-has-children dropdown">
                        <a href="au_client_view.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-shopping-cart"></i><p>Client</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                    <li class="active">
                        <a href="au_employee_view.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-user"></i><p>Employee</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                <li>
                    <li class="menu-item-has-children dropdown">
                        <a href="au_tl_view.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-write"></i><p>Transactions</p></a>
                    </li> 
                </li>
            </ul>
    	</div>
    </div>
  <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" style="margin-right:5px" >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!--<img style="border-radius: 50%; width:5%; position: relative;" src="imgs/pic.png">-->
                                    <i class="ti-user"></i>
                                  <p class="notification">Christian</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Settings</a></li>
                                <li><a href="../login.html">Log Out</a></li>
                              </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

<%@page import="com.javatpoint.dao.EmployeeDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List<Employee> list=EmployeeDao.getAllRecords();
request.setAttribute("list",list);
%>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Employee List</h4>
                            <p class="category" style="font-size:30px;font-weight:bold;margin-left:10px;margin-top:5px;"> Total: <%=list.size()%> </p>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
                                   <thead>
<tr>
<th>Id</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Address</th>
<th>Contact Number</th>
<th>Email</th>
<th>Password</th>
<th>Birth Date</th>
<th>Age</th>
<th>Gender</th>
<th>Edit</th>
<th>Date</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getId()}</td>
<td>${u.getFirstname()}</td>
<td>${u.getMiddlename()}</td>
<td>${u.getLastname()}</td>
<td>${u.getAddress()}</td>
<td>${u.getContactnumber()}</td>
<td>${u.getEmail()}</td>
<td>${u.getPassword()}</td>
<td>${u.getBirthdate()}</td>
<td>${u.getAge()}</td>
<td>${u.getGender()}</td>
<td><a href="au_employee_editform.jsp?id=${u.getId()}"><img src="../assets/images/edit-icon.png" height="25" width="25"></a></td>
<td><a href="au_employee_delete.jsp?id=${u.getId()}"><img src="../assets/images/delete-icon.png" height="25" width="25"></a></td>
</tr>
                                  </c:forEach>
                                   </thead>
                                  </table>
                                      
                                </div>
                        </div>
                    </div>
                </div>


<%@page import="com.javatpoint.dao.EmployeeDao2,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List<Employee2> list2=EmployeeDao2.getAllRecords();
request.setAttribute("list",list2);
%>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Change Log</h4>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
                                   <thead>

<table>
<tr>

<table>
<tr>
<th>Id</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Address</th>
<th>Contact Number</th>
<th>Email</th>
<th>Password</th>
<th>Birth Date</th>
<th>Age</th>
<th>Gender</th>

</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getId()}</td>
<td>${u.getFirstname()}</td>
<td>${u.getMiddlename()}</td>
<td>${u.getLastname()}</td>
<td>${u.getAddress()}</td>
<td>${u.getContactnumber()}</td>
<td>${u.getEmail()}</td>
<td>${u.getPassword()}</td>
<td>${u.getBirthdate()}</td>
<td>${u.getAge()}</td>
<td>${u.getGender()}</td>
</tr>
                                  </c:forEach>
                                   </thead>
                                  </table>
                                      
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="home.html">Save&Spend Inc.
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               E-Loan Management System
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                PUPSHS ICT7
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, All Rights Reserved</a>
                </div>
            </div>
        </footer>

        
</body>

    <!--   Core JS Files   -->
    <script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="../assets/js/bootstrap-notify.js"></script>
    
</html>























