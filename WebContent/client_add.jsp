<%@page import="com.javatpoint.dao.ClientDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Client"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=ClientDao.save(u);
if(i>0){
response.sendRedirect("client_add-success.jsp");
}else{
response.sendRedirect("client_add-error.jsp");
}
%>