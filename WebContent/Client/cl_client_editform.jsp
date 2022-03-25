<!DOCTYPE html>
	<html>
		<head>
			<title>Edit Form</title>
		</head>
		<body>
<%@page import="com.javatpoint.dao.ClientDao,com.javatpoint.bean.Client"%>
<%
String id=request.getParameter("id");
Client u=ClientDao.getRecordById(Integer.parseInt(id));
%>
		<h1>Edit Form</h1>
			<form action="cl_client_edit.jsp" method="post">
			<input type="hidden" name="id" value="<%=u.getId() %>"/>
			<table>
				<tr><td>First Name:</td><td><input type="text" name="firstname" value="<%= u.getFirstname()%>"/></td></tr>
				<tr><td>Middle Name:</td><td><input type="text" name="middlename" value="<%= u.getMiddlename()%>"/></td></tr>
				<tr><td>Last Name:</td><td><input type="text" name="lastname" value="<%= u.getLastname()%>"/></td></tr>
				<tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
				<tr><td>Password:</td><td><input type="text" name="password" value="<%= u.getPassword()%>"/></td></tr>
				<tr><td>Contact Number:</td><td><input type="text" name="contactnumber" value="<%= u.getContactnumber()%>"/></td></tr>
				<tr><td>Birth Date:</td><td><input type="text" name="birthdate" value="<%= u.getBirthdate()%>"/></td></tr>
				<tr><td>Age:</td><td><input type="text" name="age" value="<%= u.getAge()%>"/></td></tr>
				<tr><td>Gender:</td><td><input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female </td></tr>
				<tr><td>Civil Status:</td><td><input type="text" name="civilstatus" value="<%= u.getCivilstatus()%>"/></td></tr>
				<tr><td>Address:</td><td><input type="text" name="address" value="<%= u.getAddress()%>"/></td></tr>
				<tr><td>Occupation:</td><td><input type="text" name="occupation" value="<%= u.getOccupation()%>"/></td></tr>
				<tr><td>Company Name:</td><td><input type="text" name="companyname" value="<%= u.getCompanyname()%>"/></td></tr>
				<tr><td colspan="2"><input type="submit" value="Update"/></td></tr>
			</table>
		</form>
	</body>
</html>