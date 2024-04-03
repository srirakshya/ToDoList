<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	tr.td,th{
		border : border-collapse;
	
	}

</style>
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
	
	
	<h3>Tasks</h3>
	<% List<Task> tasks = (List)request.getAttribute("tasks"); %>
	
	<table border="5px">
	<tr>
	<th>id</th> 
	<th>title</th>
	<th>description</th>
	<th>priority</th>
	<th>duedate</th>
	<th>status</th>
	</tr>
	
	<% for(Task task :tasks){%>
	<tr border="5px">
	<td border="5px"><%= task.getTaskid() %></td>
	<td border="5px"><%= task.getTasktitle() %></td>
	<td border="5px"><%= task.getTaskdescription() %></td>
	<td border="5px"><%= task.getTaskpriority() %></td>
	<td border="5px"><%= task.getTaskduedate() %></td>
	<td border="5px"><%= task.getTaskstatus()%></td>
	</tr>
	
	<%} %>
	
	
	<tr>
	
	
	</table>
	

	
	
	
</body>
</html>