<%@page import="com.javatpoint.dao.EmployeeDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
EmployeeDao.delete(u);
response.sendRedirect("employee_view.jsp");
%>