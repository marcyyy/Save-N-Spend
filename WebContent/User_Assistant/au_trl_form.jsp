<!doctype html>
<html lang="en">
<title>Save and Spend | Add New Reloan</title>
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
                    <li class="menu-item-has-children dropdown">
                        <a href="au_employee_view.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="ti-user"></i><p>Employee</p></a>
                        <ul class="sub-menu children dropdown-menu"  style="width:100%;background-color:#54c579">
                        </ul>
                    </li>   
                <li>
                    <li class="active">
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

<%@page import="com.javatpoint.dao.TransactionLoanDao,com.javatpoint.bean.TransactionLoan"%>

<%
String id=request.getParameter("id");
TransactionLoan u=TransactionLoanDao.getRecordById(Integer.parseInt(id));
%>

  <div class="content">
            <div class="container">
                <div class="row">
                     <div class="col-lg-8 col-md-7" style="width:100%">
                        <div class="card">
                            <div class="header">
                                 <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px;margin-bottom:10px"><font color = "teal">Add New Reloan Transaction</font></h4>
                                        <a href="au_tl_view.jsp"><input type="button" class="btn btn-info btn-fill btn-wd" value="VIEW ALL RECORDS"></a>
                            </div>
                            <hr>
                            <div class="content">
                                <form action="trl_update.jsp" method="post">
                                <input type="hidden" name="id" value="<%=u.getId() %>"/>
                                    <div class="row">
                                    <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Date of Transaction</label>
                                                <input type="hidden" name="paidamount" value="<%=u.getPaidamount()%>">
                                                <input type="date" name="paydate" class="form-control border-input" value="<%=u.getPaydate()%>">
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
                                                <label>Reloan Amount</label>
                                                <input type="number" name="reloanamount" class="form-control border-input" value="<%=u.getReloanamount()%>">
                                                <input type="hidden" name="loanamount" value="<%=u.getLoanamount()%>">
                                                <input type="hidden" name="totalloan" value="<%=u.getTotalloan()%>">
                                            </div>
                                        </div>
                                         <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Interest Rate</label>
                                                <input type="number" name="reinterestrate" class="form-control border-input" value="<%=u.getReinterestrate()%>">
                                                <input type="hidden" name="interestrate" value="<%=u.getInterestrate()%>">
                                				<input type="hidden" name="totalrate" value="<%=u.getTotalrate()%>">
                                				<input type="hidden" name="totalbalance" class="form-control border-input" value="<%=u.getTotalbalance()%>">
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Loan Type</label>
                                                <select name="loantype" class="form-control border-input" value="<%=u.getLoantype()%>" >
                                                    <option>Mortgage Loan</option>
                                                    <option>Personal Financing</option>
                                                    <option>Vehicle Financing</option>
                                                    <option>Microfinance</option>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>New Installment Date</label>
                                                <input type="date" name="installmentdate" class="form-control border-input" value="<%=u.getInstallmentdate()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="height:1px">
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="ADD RELOAN TRANSACTION" style="width:300px; height:50px; margin-bottom:20px">
                                    </div>
                                </form>
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
                            <a href="ad-home.html">Save&Spend Inc.
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
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
    
</html>
