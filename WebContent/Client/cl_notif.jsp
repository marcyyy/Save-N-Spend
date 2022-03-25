<!doctype html>
<html lang="en">
<title>Save and Spend | View Re-Loan Transaction</title>
<link href="../assets/css/table.css" media="screen" rel="stylesheet" type="text/css" />
<jsp:include page="head.jsp"></jsp:include>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">
    			<div class="sidebar-wrapper" style="height:100%; overflow-y: auto;">
        			<div class="logo">
       					<a href="../ad-home.jsp" class="simple-text">
       						<img style="width:100%" src="../assets/imgs/logo.png">
       					</a>
        			</div>
        				<ul class="nav">
       						<li>
        						<a href="../ad-home.jsp">
       								 <i class="ti-desktop"></i>
       		 						<p>Home</p>
       		 					</a>
       						</li>
                  			                  		
                  			 <li>
                       			 <a href="../user_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-headphone-alt"></i><p>User Management</p></a>
                       			 <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        		</ul>
                   			 </li> 
                
                    <li>
                        <a href="../client_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-shopping-cart"></i><p>Client</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>     
                    <li>
                        <a href="../employee_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-user"></i><p>Employee</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ti-write"></i><p>Transactions</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                            <li style="position:relative;"><a href="../l_transaction_form.jsp"><i class="ti-comment"></i><font color = "white"><p>Loan Transaction</p></font></a></li>
                            <li style="position:relative;"><a href="../rl_transaction_form.jsp"><i class="ti-comments"></i><font color = "white"><p>Re-Loan Transaction</p></font></a></li>
                            <li style="position:relative;"><a href="../payment_transaction_form.jsp"><i class="ti-credit-card"></i><font color = "white"><p>Payment Transaction</p></font></a></li>
                        </ul>
                    </li>
                                        <li class="active">
                        <a href="Client/notif.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-bell"></i><p>Notification</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li> 
                </li>
            </ul>
    	</div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="ti-menu"></i></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <div class="search-container" style="position:relative; margin: 23px 20px 0px 0px;">
                            </div>
                        </li>
                        <li class="dropdown" style="margin-right:20px" >
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!--<img style="border-radius: 50%; width:5%; position: relative;" src="imgs/pic.png">-->
                                    <i class="ti-user"></i>
                                  <p class="notification">Charles</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="profile.html">Profile</a></li>
                                <li><a href="settings.html">Settings</a></li>
                                <li><a href="../login.html">Log Out</a></li>
                              </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

<%@page import="com.javatpoint.dao.ClientNotifDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Request  Re-Loan Transaction's List</h1>

<%
List<RequestForm> list=ClientNotifDao.getAllRecords();
request.setAttribute("list",list);
%>

<table>
<tr>
<th>Id</th>
<th>Date</th>
<th>Loan Type</th>
<th>Loan Amount</th>
<th>Loan Interest</th>
<th>Cashable Amount</th>
<th>Term of Payment</th>
<th>Monthly Payment</th>
<th>Request</th>
<th>Accept</th>
<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getMessage()}</td>
<td><a href="cl_notif_delete.jsp?id=${u.getId()}"><img src="../assets/images/delete-icon.png" height="25" width="25"></a></td>
</tr>
</c:forEach>
</table>



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


    <script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/js/bootstrap-notify.js"></script>
    
</html>























