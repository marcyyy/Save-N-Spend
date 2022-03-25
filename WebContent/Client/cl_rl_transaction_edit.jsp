<%@page import="com.javatpoint.dao.ReLoanTransactionDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.ReLoanTransaction"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=ReLoanTransactionDao.update(u);
response.sendRedirect("rl_transaction_view.jsp");
%>