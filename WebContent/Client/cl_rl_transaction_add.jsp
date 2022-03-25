<%@page import="com.javatpoint.dao.TransactionNotifDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionNotif"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="javax.swing.*"%>
<%
try{
	
int i = 0;

i = TransactionNotifDao.save(u);

if(i>0){
response.sendRedirect("cl_rl_transaction_add-success.jsp");
}else{
response.sendRedirect("cl_rl_transaction_add-error.jsp");
}
}catch(Exception e){JOptionPane.showMessageDialog(null,e);}
%>