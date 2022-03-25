<!doctype html>
<html lang="en">
<title>Save and Spend | Add New Loan</title>
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

  <div class="content">
            <div class="container">
                <div class="row">
                     <div class="col-lg-8 col-md-7" style="width:100%">
                        <div class="card">
                            <div class="header">
                                <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px;margin-bottom:10px"><font color = "teal">Add New Loan Transaction</font></h4>
                                        <a href="tl_view.jsp"><input type="button" class="btn btn-info btn-fill btn-wd" value="VIEW ALL RECORDS"></a>
                            </div>
                            <hr>
                            <div class="content">
                                <form action="tl_add.jsp" method="post">
                                <input type="hidden" name="paidamount" value="0">
                                    <div class="row">
                                    <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Date of Transaction</label>
                                                <input type="date" name="paydate" class="form-control border-input">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Account ID</label>
                                                <input type="text" name="name" class="form-control border-input" placeholder="Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Loan Amount</label>
                                                <input type="number" name="loanamount" class="form-control border-input" placeholder="00000">
                                                <input type="hidden" name="reloanamount" value="0">
                                                <input type="hidden" name="totalloan" value="0">
                                            </div>
                                        </div>
                                        <input type="hidden" name="totalbalance" class="form-control border-input" value="0">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Loan Type</label>
                                                <select name="loantype" class="form-control border-input">
                                                    <option>Mortgage Loan</option>
                                                    <option>Personal Financing</option>
                                                    <option>Vehicle Financing</option>
                                                    <option>Microfinance</option>
                                                    </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Interest Rate</label>
                                                <input type="number" name="interestrate" class="form-control border-input" placeholder="00000">
                                                <input type="hidden" name="reinterestrate" value="0">
                                				<input type="hidden" name="totalrate" value="0">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Installment Date</label>
                                                <input type="date" name="installmentdate" class="form-control border-input">
                                            </div>
                                        </div>
									</div>
                                    <hr style="height:1px">
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="ADD LOAN TRANSACTION" style="width:300px; height:50px; margin-bottom:20px">
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

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
    
</html>
