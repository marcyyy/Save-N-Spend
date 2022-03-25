<%@page import="com.javatpoint.dao.TransactionLoanDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionLoan"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.TransactionReloanDao"%>
<jsp:useBean id="uu" class="com.javatpoint.bean.TransactionReloan"></jsp:useBean>
<jsp:setProperty property="*" name="uu"/>
<%@page import="java.sql.*"%>

<%
String id  = request.getParameter("id");
String reloanamount = request.getParameter("reloanamount");
String reinterestrate = request.getParameter("reinterestrate");
String paydate = request.getParameter("paydate");
String installmentdate = request.getParameter("installmentdate");
String loantype = request.getParameter("loantype");

int reloannew = Integer.parseInt(reloanamount);
int reratenew = Integer.parseInt(reinterestrate);

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
Statement st = con.createStatement();
ResultSet rs;

rs = st.executeQuery("select * from transactionloan");
rs.next();

int reloanamountold = Integer.parseInt(rs.getString(10));
if(reloanamountold >= reloannew || reloanamountold <= reloannew){
	reloanamountold = reloanamountold + reloannew;
}
	
int reinterestrateold = Integer.parseInt(rs.getString(11));
if(reinterestrateold >= reratenew || reinterestrateold <= reratenew){
	reinterestrateold = reinterestrateold + reratenew;	
}

	st.executeUpdate("update transactionloan set reloanamount='"+reloanamountold+"', reinterestrate='"+reinterestrateold+"', paydate='"+paydate+"', installmentdate='"+installmentdate+"', loantype='"+loantype+"' where id='"+id+"'");

	TransactionReloanDao.save(uu);
	response.sendRedirect("tl_view.jsp");
%>