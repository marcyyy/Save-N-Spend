<!doctype html>
<html lang="en">
<title>Save and Spend | View Loan Transactions</title>
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
       						<li >
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
<td><a href="au_trl_form.jsp?id=${u.getId()}"><img src="../imgs/reloan.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<a href="au_tpl_form.jsp?id=${u.getId()}"><img src="../imgs/payment.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a>
<a href=""><img src="../imgs/balance.png" height="30" width="30" style="margin:3px 0px 3px 10px"></a></td>
<td><button class="btn btn-info btn-fill btn-wd">ACTIVE</button></td>

</tr>
                                  </c:forEach>
                                  </thead>
                                  </table>
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

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>
    
</html>























