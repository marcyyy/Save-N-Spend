<%@page import="com.javatpoint.dao.EmployeeDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.EmployeeDao2"%>
<jsp:useBean id="uu" class="com.javatpoint.bean.Employee2"></jsp:useBean>
<jsp:setProperty property="*" name="uu"/>

<%
int i=EmployeeDao.update(u);
int ii=EmployeeDao2.save(uu);
response.sendRedirect("au_employee_view.jsp");
%>