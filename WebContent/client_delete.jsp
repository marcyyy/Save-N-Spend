<%@page import="com.javatpoint.dao.ClientDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
ClientDao.delete(u);
response.sendRedirect("client_view.jsp");
%>