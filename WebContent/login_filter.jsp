<!DOCTYPE html>
<html>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	int c = 0;
	String ulevel = request.getParameter("userl");
if (ulevel.equals("Administrator")){
	String email=request.getParameter("email");
	session.putValue("email",email); 
	String password=request.getParameter("password"); 
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root",""); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'"); 
	if(rs.next()) 
	{
	if(rs.getString(3).equals(password)) 
	{
	response.sendRedirect("ad-home.jsp");

	}

	else if(rs.getString(3).equals(password)==false){
		response.sendRedirect("login_error.jsp");
	}
	}
	else{
		response.sendRedirect("login_error.jsp");
	}
}
else if (ulevel.equals("User Assistant")){
	String email=request.getParameter("email"); 
	session.putValue("email",email); 
	String password=request.getParameter("password"); 
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root",""); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from user where email='"+email+"'"); 
	if(rs.next()) 
	{
	if(rs.getString(8).equals(password)) 
	{
	response.sendRedirect("User_Assistant/au-home.jsp");

	}

	else if(rs.getString(8).equals(password)==false){
		response.sendRedirect("login_error.jsp");
	}
	}
	else{
		response.sendRedirect("login_error.jsp");
	}
}

else if (ulevel.equals("Client")){
	String email=request.getParameter("email"); 
	session.putValue("email",email); 
	String password=request.getParameter("password"); 
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root",""); 
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from client where email='"+email+"'"); 
	if(rs.next()) 
	{
	if(rs.getString(6).equals(password)) 
	{
	response.sendRedirect("Client/cl-home.jsp");

	}

	else if(rs.getString(6).equals(password)==false){
		response.sendRedirect("login_error.jsp");
	}
	}
	else{
		response.sendRedirect("login_error.jsp");
	}
}
	%>
</body>
</html>