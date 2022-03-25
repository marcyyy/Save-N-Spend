<!doctype html>
<html lang="en">
<title>Save and Spend | Edit Client</title>
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

                    <li class="active">
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
        
        <%@page import="com.javatpoint.dao.ClientDao,com.javatpoint.bean.Client"%>
<%
String id=request.getParameter("id");
Client u=ClientDao.getRecordById(Integer.parseInt(id));
%>

        <div class="content">
            <div class="container">
                <div class="row">
                     <div class="col-lg-8 col-md-7" style="width:100%">
                        <div class="card">
                            <div class="header">
                                <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:700px;margin-top:5px"><font color ="teal">Edit Client</font></h4>
                                        <a href="au_client_view.jsp"  style="margin-top:5px"><input type="button" class="btn btn-info btn-fill btn-wd" value="VIEW ALL RECORDS"></a>
                            </div>
                            <hr>
                            <div class="content">
                                <form action="au_client_edit.jsp" method="post">
                                <input type="hidden" name="id" value="<%=u.getId() %>"/>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" name="firstname" class="form-control border-input"  value="<%= u.getFirstname()%>">
                                            </div>
                                        </div>
                                         <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Middle Name</label>
                                                <input type="text" name="middlename" class="form-control border-input"  value="<%= u.getMiddlename()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input type="text" name="lastname" class="form-control border-input"  value="<%= u.getLastname()%>">
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" name="email" class="form-control border-input" value="<%= u.getEmail()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control border-input" value="<%= u.getPassword()%>">
                                            </div>
                                        </div>
                                    </div>
                                <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Contact Number</label>
                                                <input type="text" name="contactnumber"" class="form-control border-input" value="<%= u.getContactnumber()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Birthday</label>
                                                <input type="date" name="birthdate" class="form-control border-input" value="<%= u.getBirthdate()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Age</label>
                                                <input type="text" name="age"" class="form-control border-input" value="<%= u.getAge()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select name="gender" class="form-control border-input" value="<%= u.getGender()%>">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Civil Status</label>
                                                <input type="text" name="civilstatus" class="form-control border-input" value="<%= u.getCivilstatus()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control border-input" value="<%= u.getAddress()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Occupation</label>
                                                <input type="text" name="occupation" class="form-control border-input" value="<%= u.getOccupation()%>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Company Name</label>
                                                <input type="text" name="companyname" class="form-control border-input" value="<%= u.getCompanyname()%>">
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="height:1px">
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="UPDATE CLIENT" style="width:300px; height:50px; margin-bottom:20px">
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





















