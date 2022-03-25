<!doctype html>
	<html lang="en">
		<title>Save and Spend | Charles</title>
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
       						<li class="active">
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
                
                     <li class="menu-item-has-children dropdown">
                        <a href="tl_form.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-credit-card"></i><p>Transaction Loan</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                                        <li class="menu-item-has-children dropdown">
                        <a href="notif.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-receipt"></i><p>Loan Request</p></a>
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
<%@page import="com.javatpoint.dao.ClientDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

							<%
							List<Client> clist=ClientDao.getAllRecords();
							request.setAttribute("list",clist);
							%>
							
<%@page import="com.javatpoint.dao.EmployeeDao,com.javatpoint.bean.*,java.util.*"%>

							<%
							List<Employee> elist=EmployeeDao.getAllRecords();
							request.setAttribute("list",elist);
							%>
							
<%@page import="com.javatpoint.dao.TransactionLoanDao,com.javatpoint.bean.*,java.util.*"%>

							<%
							List<TransactionLoan> tlist=TransactionLoanDao.getAllRecords();
							request.setAttribute("list",tlist);
							%>

<%@page import="com.javatpoint.dao.TransactionNotifDao,com.javatpoint.bean.*,java.util.*"%>

							<%
							List<TransactionNotif> nlist=TransactionNotifDao.getAllRecords();
							request.setAttribute("list",nlist);
							%>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-center">
                                            <i class="ti-shopping-cart"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Client</p>
                                            <%=clist.size()%>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Total Number of Clients
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-success text-center">
                                            <i class="ti-user"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Employee</p>
                                            <%=elist.size()%>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Total Number of Employees
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-danger text-center">
                                            <i class="ti-wallet""></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Loan Transactions</p>
                                            <%=tlist.size()%>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Total Loan Transactions
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-info text-center">
                                            <i class="ti-money"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Loan Request</p>
                                            <%=nlist.size()%>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Total Loan Request
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title" style="font-size:80px; font-weight: bold;text-align: center;padding-top:30px">Welcome, Charles!</h4>
                                <p class="category" style="padding-bottom: 50px;font-size:40px; font-weight: bold;text-align: center">this is your system admin reports</p>
                            	<img src="imgs/admin-loan.png" style="display: block; margin-left: auto; margin-right: auto;">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="header">
                                <h2 class="title" style="font-style: italic; font-weight: bold  ">Features</h2>
                            </div>
                            <div class="content">
                                <div class="footer">
                                    <hr>
                                <p style="margin-top:20px; font-size:22px;text-align: justify;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Languages: CSS, JSP, JAVA and HTML<p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Sixteen pages including log in, homepage, and CRUDs of user, client, employee, and transactions(loan, reloan, & payment).<p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Ability to Create, Read, Update, and Delete database values. <p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Capable to Compute database values efficiently. <p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Accept Request from Client Level. <p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Catered with Apache Tomcat v8.5 to store database values.<p style="font-size:22px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Secured with an email, password and account level to control how much authoritization the user will have on the system.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="header">
                                <h2 class="title" style="font-style: italic; font-weight: bold">Save&Spend</h2>
                            </div>
                            <div class="content">
                                <div class="footer">
                                    <hr>
                                <p style="margin-top:20px; font-size:22px;text-align: justify;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Save&Spend is an E-loan Management system that will bring satisfaction to clients since most of them are not fond of using manual system in handling all loan transaction. In addition, Administration module, Assistant module and Client module are  incorporated in the said system.</p>
                                <img src="imgs/logo-word.png" style="width:50%; margin-top: 50px; margin-bottom: 25px; margin-right: auto; margin-left: auto; display:block;">
                                </div>
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
        </div>
        </div>
</body>
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-notify.js"></script>   
</html>