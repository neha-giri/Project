<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<h1>Employee register fore</h1>
<form action="<%= request.getContextPath() %>/EmployeeServlet" method="post">
<table style="with: 80%">
<tr>
<td> /first mane</td>
<td><input type="text" name="firstName" /></td>
</tr>
</table>
<input type="submit" value="submit" />
</form>
</div>

</body>
</html>