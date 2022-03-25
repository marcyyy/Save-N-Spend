<%@page import="com.javatpoint.dao.TransactionLoanDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.TransactionLoan"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<%
int i=0;
i=TransactionLoanDao.save(u);
if(i>0){
response.sendRedirect("tl_add-success.jsp");
}else{
response.sendRedirect("tl_add-error.jsp");
}
%>