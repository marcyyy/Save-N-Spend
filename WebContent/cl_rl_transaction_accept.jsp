<%@page import="com.javatpoint.dao.TransactionNotifDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionNotif"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%
int i = 0;

String id = request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
Statement st = con.createStatement();
ResultSet rs,rs1;

rs = st.executeQuery("select * from transactionnotif where id='"+id+"'");
rs.next();

st.executeUpdate("insert into transactionloan (name,loantype,loanamount,interestrate,installmentdate,paidamount,paydate,totalbalance,reloanamount,reinterestrate,totalloan,totalrate,repaidamount,totalpay) values('"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getString(4)+"','"+rs.getString(5)+"','"+rs.getString(6)+"','"+rs.getString(7)+"','"+rs.getString(8)+"','"+rs.getString(9)+"','"+rs.getString(10)+"','"+rs.getString(11)+"','"+rs.getString(12)+"','"+rs.getString(13)+"','"+rs.getString(14)+"','"+rs.getString(15)+"') ");


st.executeUpdate("insert into cln (message) values ('Your message has been accepted')");

if(i>0){
TransactionNotifDao.delete(u);
response.sendRedirect("tl_view.jsp");
}
else{
	TransactionNotifDao.delete(u);
	response.sendRedirect("tl_view.jsp");
}

%>