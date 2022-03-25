<%@page import="com.javatpoint.dao.ClientDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%@page import="com.javatpoint.dao.ClientDao2"%>
<jsp:useBean id="uu" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

	<%@page import="com.javatpoint.dao.ClientDao,com.javatpoint.bean.Client"%>
	
<%
	ClientDao.delete(u);
	response.sendRedirect("au_client_view.jsp");
%>