<%@page import="com.javatpoint.dao.EmployeeDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=EmployeeDao.save( u);
if(i>0){
response.sendRedirect("employee_add-success.jsp");
}else{
response.sendRedirect("employee_add-error.jsp");
}
%>