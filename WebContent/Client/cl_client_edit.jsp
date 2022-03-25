<%@page import="com.javatpoint.dao.ClientDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.ClientDao2"%>
<jsp:useBean id="uu" class="com.javatpoint.bean.Client2"></jsp:useBean>
<jsp:setProperty property="*" name="uu"/>
	
	<%@page import="javax.sql.*"%>
	
<%
int i=ClientDao.update(u);
int ii=ClientDao2.save(uu);
response.sendRedirect("profile.jsp");
%>