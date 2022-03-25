<%@page import="com.javatpoint.dao.TransactionNotifDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionNotif"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
TransactionNotifDao.delete(u);
response.sendRedirect("notif.jsp");
%>