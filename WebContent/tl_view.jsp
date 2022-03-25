<!doctype html>
<html lang="en">
<title>Save and Spend | View Loan Transaction</title>
<link href="assets/css/table.css" media="screen" rel="stylesheet" type="text/css" />
<link href="assets/css/alert/style.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="assets/css/w3.css" rel="stylesheet" />
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



<%@page import="com.javatpoint.dao.TransactionLoanDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*" %>
<%@page import="javax.swing.*" %>

<%
List<TransactionLoan> list=TransactionLoanDao.getAllRecords();
request.setAttribute("list",list);

int c = 0;
int c1 = 0;

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
Statement st = con.createStatement();
ResultSet rs,rs1;

String loanamount[] = new String[list.size()];
String reloanamount[] = new String[list.size()];
String totalloan[] = new String[list.size()];

String interestrate[] = new String[list.size()];
String reinterestrate[] = new String[list.size()];
String totalrate[] = new String[list.size()];

String totalbalance[] = new String[list.size()];

String paidamount[] = new String[list.size()];

String id[] = new String[list.size()];

int loanamount1[] = new int[list.size()];
int reloanamount1[] = new int[list.size()];
int totalloan1[] = new int[list.size()];

int interestrate1[] = new int[list.size()];
int reinterestrate1[] = new int[list.size()];
int totalrate1[] = new int[list.size()];

int totalbalance1[] = new int[list.size()];

int paidamount1[] = new int[list.size()];


rs = st.executeQuery("select * from transactionloan");
while(rs.next()){
	loanamount[c] = rs.getString(4);
	reloanamount[c] = rs.getString(10);
	
	loanamount1[c] = Integer.parseInt(loanamount[c]);
	reloanamount1[c] = Integer.parseInt(reloanamount[c]);
	
	interestrate[c] = rs.getString(5);
	reinterestrate[c] = rs.getString(11);
	
	interestrate1[c] = Integer.parseInt(interestrate[c]);
	reinterestrate1[c] = Integer.parseInt(reinterestrate[c]);
	
	paidamount[c] = rs.getString(7);
	paidamount1[c] = Integer.parseInt(paidamount[c]);
	
	totalbalance[c] = rs.getString(9);
	totalbalance1[c] = Integer.parseInt(totalbalance[c]);
	
	id[c] = rs.getString(1); 
			
			if (reloanamount1[c] > 0){
				totalloan1[c] = loanamount1[c] + reloanamount1[c];

			}
			else{
				totalloan1[c] = loanamount1[c];

			}
			
			if (reinterestrate1[c] > 0){
				totalrate1[c] = interestrate1[c] + reinterestrate1[c];

			}
			else{
				totalrate1[c] = interestrate1[c];

			}
			
			if (totalloan1[c] > 0){
				totalbalance1[c] = totalrate1[c] + totalloan1[c];

			}
			else{
				totalbalance1[c] = totalrate1[c] + totalloan1[c];

			}
			
			if (paidamount1[c] > 0){
				totalbalance1[c] = totalbalance1[c] - paidamount1[c];

			}
			else{
				totalbalance1[c] = totalbalance1[c];
			}
			
	c = c + 1;
}

while(c1 <= list.size() - 1){
	st.executeUpdate("update transactionloan set totalloan='"+totalloan1[c1]+"' where id='"+id[c1]+"'");
	
	st.executeUpdate("update transactionloan set totalrate='"+totalrate1[c1]+"' where id='"+id[c1]+"'");
	
	st.executeUpdate("update transactionloan set totalbalance='"+totalbalance1[c1]+"' where id='"+id[c1]+"'");
	
	st.executeUpdate("update transactionloan set paidamount='"+paidamount1[c1]+"' where id='"+id[c1]+"'");
	c1 = c1 + 1;
}

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
                                            <img src="imgs/reloan.png" height="45" width="45" style="margin:3px 0px 3px 10px">
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Reloan</p>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Reloan from the Account
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
                                            <img src="imgs/payment.png" height="45" width="45" style="margin:3px 0px 3px 10px">
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Pay</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Pay Loan from the Account
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
                                           <img src="assets/images/delete-icon.png" height="45" width="45" style="margin:3px 0px 3px 10px">
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Delete</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Delete Loan Account
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
                                           <img src="imgs/balance.png" height="45" width="45" style="margin:3px 0px 3px 10px">
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Receipt</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-archive"></i> Balance Inquiry & Payment Schedule
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Loan Transaction List</h4>
                            <p class="category" style="font-size:30px;font-weight:bold;margin-left:10px;margin-top:5px;"> Total: <%=list.size()%> </p>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
                                   <thead>
<tr>
<th>Client ID</th>
<th>Loan Type</th>
<th>Loan Amount</th>
<th>Interest Rate</th>
<th>Installment Date</th>
<th>Total Paid</th>
<th>Total Balance</th>
<th>Actions</th>
<th>Status</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getName()}</td>
<td>${u.getLoantype()}</td>
<td>${u.getTotalloan()}</td>
<td>${u.getTotalrate()}</td>
<td>${u.getInstallmentdate()}</td>
<td>${u.getPaidamount()}</td>
<td>${u.getTotalbalance()}</td>
<td><a href="trl_form.jsp?id=${u.getId()}"><img src="imgs/reloan.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<a href="tpl_form.jsp?id=${u.getId()}"><img src="imgs/payment.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<a href="tl_delete.jsp?id=${u.getId()}"><img src="assets/images/delete-icon.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<a href="tbl_form.jsp?id=${u.getId()}"><img src="imgs/balance.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<!--
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Balance Inquiry</h2>
      </header>
      <div class="content">
      			<div class="row">
      				<div class="col-md-5">
      					<div class="form-group" style="margin-left:50px;">
      						<label>Account ID</label>
      							<input type="date" name="paydate" class="form-control border-input" value="">
      					</div>
                     </div>
      </div>
      </div>
      <footer class="w3-container w3-teal">
        <div class="w3-container">
        <div id='DivIdToPrint'>
		<input type='button' id='btn' value='Print' onclick='printDiv();'>
      </div>
      </div>
      </footer>
    </div>
  </div>-->
<td>
<button class="btn btn-info btn-fill btn-wd">ACTIVE</button></td>

</tr>
                                  </c:forEach>
                                  </thead>
                                  </table>
                                      <div class="text-left" style="margin-right:10px;margin-left:20px;margin-bottom:10px">
                                        <a href="tl_form.jsp"><button type="submit" class="btn btn-info btn-fill btn-wd">ADD NEW LOAN</button></a>
                                  </div>
                                </div>
                        </div>
                    </div>
                </div>



<%@page import="com.javatpoint.dao.TransactionReloanDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List<TransactionReloan> list2=TransactionReloanDao.getAllRecords();
request.setAttribute("list",list2);
%>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Reloan Transaction List</h4>
                            <p class="category" style="font-size:30px;font-weight:bold;margin-left:10px;margin-top:5px;"> Total: <%=list2.size()%> </p>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
   <thead>
<tr>
<th>Client ID</th>
<th>Loan Type</th>
<th>Reloan Amount</th>
<th>New Installment Date</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getName()}</td>
<td>${u.getLoantype()}</td>
<td>${u.getReloanamount()}</td>
<td>${u.getInstallmentdate()}</td>
</tr>
                                  </c:forEach>
                                  
                                  </thead>
                                  </table>
                                </div>
                        </div>
                    </div>
                </div>

<%@page import="com.javatpoint.dao.TransactionPayloanDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List<TransactionPayloan> list3=TransactionPayloanDao.getAllRecords();
request.setAttribute("list",list3);
%>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                            <h4 class="title" style="font-size:50px;font-weight:bold;margin-left:10px;margin-top:5px">Payment Transaction List</h4>
                            <p class="category" style="font-size:30px;font-weight:bold;margin-left:10px;margin-top:5px;"> Total: <%=list3.size()%> </p>
                            </div>

                            <div class="content table-responsive table-full-width">

                                <table class="table table-striped">
                                   <thead>
                <tr>
<th>Client ID</th>
<th>Loan Type</th>
<th>Payment Amount</th>
<th>Payment Date</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getName()}</td>
<td>${u.getLoantype()}</td>
<td>${u.getPaidamount()}</td>
<td>${u.getPaydate()}</td>
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
        </div>
        </div>

        
</body>
<script type="text/javascript">
function printDiv() 
{

  var divToPrint=document.getElementById('DivIdToPrint');

  var newWin=window.open('','Print-Window');

  newWin.document.open();

  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

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























