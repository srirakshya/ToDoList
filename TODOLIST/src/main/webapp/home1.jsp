<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	   <!--get user from session  -->
	<% User user = (User)request.getSession().getAttribute("user"); %>
	<% String username = user.getUsername(); %>
	
	<h1>Welcome <%= username %></h1>
	<h3>Email: <%= user.getUseremail() %></h3>
	
	<%String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
	<img alt="" src="data:image/jpeg;base64,<%= image %>" width="300" height="300"><br>
	
	<a href="addtask.jsp">Add Task</a>
	

	
	
	
</body>
</html>