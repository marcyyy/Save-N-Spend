<!doctype html>
	<html lang="en">
		<title>Save and Spend | Create New User</title>
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
                  			 <li class="active">
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
                                <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:700px;margin-top:5px"><font color ="teal">Add New User</font></h4>
                                        <a href="user_view.jsp"><input type="button" class="btn btn-info btn-fill btn-wd" value="VIEW ALL RECORDS"></a>
                            </div>
                            <hr>
                            <div class="content">
                                <form action="user_add.jsp" method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>First Name</label>
                                                <input type="text" name="firstname" class="form-control border-input" placeholder="First Name">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Contact Number</label>
                                                <input type="text" name="contactnumber"" class="form-control border-input" placeholder="Contact Number">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                         <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Middle Name</label>
                                                <input type="text" name="middlename" class="form-control border-input" placeholder="Middle Name">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Birthday</label>
                                                <input type="date" name="birthdate" class="form-control border-input">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Last Name</label>
                                                <input type="text" name="lastname" class="form-control border-input" placeholder="Last Name">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Age</label>
                                                <input type="text" name="age"" class="form-control border-input">
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Email Address</label>
                                                <input type="text" name="email" class="form-control border-input" placeholder="Email Address">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Gender</label>
                                                <select name="gender" class="form-control border-input" placeholder="Select Gender">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    </select>
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:50px;">
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control border-input" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group" style="margin-left:200px;">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control border-input" placeholder="Address">
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="height:1px">
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="ADD USER" style="width:300px; height:50px; margin-bottom:20px">
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
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-notify.js"></script>   
</html>