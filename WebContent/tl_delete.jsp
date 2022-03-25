<%@page import="com.javatpoint.dao.TransactionLoanDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionLoan"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<%
TransactionLoanDao.delete(u);
response.sendRedirect("tl_view.jsp");
%>