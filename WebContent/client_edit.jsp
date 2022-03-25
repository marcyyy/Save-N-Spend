<%@page import="com.javatpoint.dao.ClientDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
	
	<%@page import="javax.sql.*"%>
	
<%
int i=ClientDao.update(u);
response.sendRedirect("client_view.jsp");
%>