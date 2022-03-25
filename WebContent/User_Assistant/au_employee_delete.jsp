<%@page import="com.javatpoint.dao.EmployeeDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.EmployeeDao2"%>
<jsp:useBean id="uu" class="com.javatpoint.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

	<%@page import="com.javatpoint.dao.EmployeeDao,com.javatpoint.bean.Employee"%>
	
<%
	EmployeeDao.delete(u);
	response.sendRedirect("au_employee_view.jsp");
%>