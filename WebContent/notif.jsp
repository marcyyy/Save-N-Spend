<!doctype html>
<html lang="en">
<title>Save and Spend | Loan Request</title>
<link href="assets/css/table.css" media="screen" rel="stylesheet" type="text/css" />
<jsp:include page="head.jsp"></jsp:include>
<body>
		<div class="wrapper">
   	 		<div class="sidebar" data-background-color="white" data-active-color="danger">
    			<div class="sidebar-wrapper" style="height:100%; overflow-y: auto;">
        			<div class="logo">
       					<a href="ad-home.jsp" class="simple-text">
       						<img style="width:100%" src="assets/imgs/logo.png">
       					</a>
        			</div>
        				<ul class="nav">
       						<li>
        						<a href="ad-home.jsp">
       								 <i class="ti-desktop"></i>
       		 						<p>Home</p>
       		 					</a>
       						</li>
                  			 <li class="menu-item-has-children dropdown">
                       			 <a href="user_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-headphone-alt"></i><p>User Management</p></a>
                       			 <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        		</ul>
                   			 </li> 
                
                    <li class="menu-item-has-children dropdown">
                        <a href="client_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-shopping-cart"></i><p>Client</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>     
                    <li class="menu-item-has-children dropdown">
                        <a href="employee_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-user"></i><p>Employee</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                
                     <li>
                        <a href="tl_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-credit-card"></i><p>Transaction Loan</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                                        <li class="active">
                        <a href="Client/notif.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-receipt"></i><p>Loan Request</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                </li>
            </ul>
    	</div>
    </div>
  <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
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
                                  <p>Charles</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Settings</a></li>
                                <li><a href="login.html">Log Out</a></li>
                              </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

<%@page import="com.javatpoint.dao.TransactionNotifDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List<TransactionNotif> list=TransactionNotifDao.getAllRecords();
request.setAttribute("list",list);
%>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Loan Request</h4>
                            <p class="category" style="font-size:30px;font-weight:bold;margin-left:10px;margin-top:5px;"> Total: <%=list.size()%> </p>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
                                   <thead>
                                   <tr>
<th>Client ID</th>
<th>Date of Request</th>
<th>Loan Type</th>
<th>Loan Amount</th>
<th>Preferred Installment Date</th>
<th>Accept</th>
<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getName()}</td>
<td>${u.getPaydate()}</td>
<td>${u.getLoantype()}</td>
<td>${u.getLoanamount()}</td>
<td>${u.getInstallmentdate()}</td>
<td><a href="cl_rl_transaction_accept.jsp?id=${u.getId()}"><img src="imgs/check-icon.png" height="25" width="25"></a></td>
<td><a href="cl_rl_transaction_delete.jsp?id=${u.getId()}"><img src="imgs/delete-icon.png" height="25" width="25"></a></td>
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
                            <a href="#">Save&Spend Inc.
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
                    &copy; <script>document.write(new Date().getFullYear())</script>, All Rights Reserved
                </div>
            </div>
        </footer>     

</body>


    <script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../assets/js/bootstrap-notify.js"></script>
    
</html>























