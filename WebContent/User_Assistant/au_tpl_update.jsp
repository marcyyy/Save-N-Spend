<%@page import="com.javatpoint.dao.TransactionLoanDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionLoan"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.TransactionPayloanDao"%>
<jsp:useBean id="uuu" class="com.javatpoint.bean.TransactionPayloan"></jsp:useBean>
<jsp:setProperty property="*" name="uuu"/>

<%@page import="java.sql.*"%>

<%
String id  = request.getParameter("id");
String loantype = request.getParameter("loantype");
String installmentdate = request.getParameter("installmentdate");
String paidamount = request.getParameter("paidamount");
String paydate = request.getParameter("paydate");

int paymentnew = Integer.parseInt(paidamount);

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
Statement st = con.createStatement();
ResultSet rs;

rs = st.executeQuery("select * from transactionloan");
rs.next();

int paidamountold = Integer.parseInt(rs.getString(7));
if(paidamountold >= paymentnew || paidamountold <= paymentnew){
	paidamountold = paidamountold + paymentnew;
}
	st.executeUpdate("update transactionloan set paidamount='"+paidamountold+"', paydate='"+paydate+"', installmentdate='"+installmentdate+"', loantype='"+loantype+"' where id='"+id+"'");

	TransactionPayloanDao.save(uuu);
	response.sendRedirect("au_tl_view.jsp");
%>
