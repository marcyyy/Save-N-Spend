<!doctype html>
<html lang="en">
<title>Save and Spend | Add New Reloan</title>
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
                
                     <li class="active">
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

<%@page import="com.javatpoint.dao.TransactionLoanDao,com.javatpoint.bean.TransactionLoan"%>
<%
String id=request.getParameter("id");
TransactionLoan u=TransactionLoanDao.getRecordById(Integer.parseInt(id));
%>


  <div class="content">
            <div class="container">
                <div class="row">
                     <div class="col-lg-8 col-md-7" id='DivIdToPrint' style="width:100%">
                        <div class="card">
                            <div class="header">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-center">
                                            <img align="middle"src="imgs/Untitled-2.png" style="width:120px;height:120px">
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <h4 style="margin-bottom:50px;margin-right:40px">Receipt</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr>
                                    <div style="float:right" class="stats">
                                        <i class="ti-archive"></i> Balance Inquiry and Payment Schedule
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <input type="hidden" name="id" value="<%=u.getId() %>"/>
                                <input type="hidden" name="totalpay" value="<%=u.getTotalpay() %>"/>
                                <input type="hidden" name="repaidamount" value="<%=u.getRepaidamount() %>"/>
                                    <div class="row">
                                    <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Receipt Date</label>
                                                <input type="date" class="form-control border-input">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Account ID</label>
                                                <input type="text" name="name" class="form-control border-input" value="<%=u.getName()%>" readonly>
                                            </div>
                                        </div>
                                        </div>
                                    <div class="row">
                                    	<div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Total Loan Amount</label>
                                				<input type="number" name="loanamount"  class="form-control border-input" value="<%=u.getLoanamount() %>" readonly>
                                                <input type="hidden" name="totalamount" class="form-control border-input" value="<%=u.getTotalloan()%>" readonly>
                                            </div>
                                        </div>
                                         <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Total Interest Rate</label>
                                					<input type="number" name="interestrate" class="form-control border-input" value="<%=u.getInterestrate() %>" readonly>
                                            		<input type="hidden" name="totalrate" class="form-control border-input" value="<%=u.getTotalrate()%>"readonly>
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Loan Type</label>
                                                <select name="loantype" class="form-control border-input" value="<%=u.getLoantype()%>" readonly>
                                                    <option>Mortgage Loan</option>
                                                    <option>Personal Financing</option>
                                                    <option>Vehicle Financing</option>
                                                    <option>Microfinance</option>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Last Date Paid</label>
                                                <input type="date" name="paydate" class="form-control border-input" value="<%=u.getPaydate()%>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Total Paid Amount</label>
                                                <input type="text" name="paidamount" class="form-control border-input" value="<%=u.getPaidamount()%>" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Payment Schedule</label>
                                                <input type="date" name="installmentdate" class="form-control border-input" value="<%=u.getInstallmentdate()%>" readonly>
                                            </div>
                                        </div>
                                        </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Total Balance</label>
                                                <%
												int loan = u.getLoanamount();
												int interest = u.getInterestrate();
												int paid = u.getPaidamount();
												int totalbalance = 0;
												
												totalbalance=(loan+interest)-paid;
												%>
                                                <input type="text" name="totalbalance" class="form-control border-input" value="<%=totalbalance%>" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Authorized by</label>
                                                <input type="text" class="form-control border-input" value="Zyrah Avila" readonly>
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                        </div>
                    </div>
                                    <hr style="height:1px">
                                    <div class="text-center">
                                    	<input type='button' id='btn' class="btn btn-info btn-fill btn-wd" value="PRINT" style="width:300px; height:50px; margin-bottom:20px" onclick='printDiv();'>
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
	<script type="text/javascript">
function printDiv() 
{

  var divToPrint=document.getElementById('DivIdToPrint');

  var newWin=window.open('','Print-Window');

  newWin.document.open();
  newWin.document.write('<html><head><title>Save&Spend Receipt</title>');
  newWin.document.write('</head><body>');
  newWin.document.write('<link href="assets/css/paper-dashboard.css" rel="stylesheet" type="text/css" />');
  newWin.document.write('<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>');
  newWin.document.write('<link href="assets/css/demo.css" rel="stylesheet" type="text/css" />');
  newWin.document.write('<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />');
  newWin.document.write('<link href="assets/css/themify-icons.css" rel="stylesheet" type="text/css" />');
  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'');
  newWin.document.write('</body></html>');
  newWin.document.close();

  setTimeout(function(){newWin.close();},10);

}
</script>
    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
    
</html>
