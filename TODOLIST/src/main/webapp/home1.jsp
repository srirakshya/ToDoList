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
	tr,td,th{
		border : border-collapse;
	}
	#home{
	
	border: 1px solid transparent; 
	height:200vh;
	width:450px;
	margin-left:32%;
	padding:80px;
	padding-top:20px;
	
	
	}
	
	html{
	
	background-image:url("data:image/png;base64,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");
	background-size:cover;
	background-repeat:no-repeat;
	
	}
	
	
	#ref{
	margin-left:25%;
	border:1px solid black;
	width:70px;
	height:20px;
	margin-top:10px;
	border-radius:20px;
	text-decoration:none;
	padding:15px;
	background-color:white;
	
	}
	
	table,tr,td,th{
	
	border: 2px solid black;
	border-collapse:collapse;
	padding:20px;
	margin:10%;
	
	}
	

</style>
</head>
<body div id="home">
	
	   <!--get user from session  -->
	<% User user = (User)request.getSession().getAttribute("user"); %>
	<% String username = user.getUsername(); %>
	
	<h1>Welcome <%= username %></h1>
	<h3>Email: <%= user.getUseremail() %></h3>
	
	<%String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
	<img alt="" src="data:image/jpeg;base64,<%= image %>" width="300" height="300"><br>
	
	<div id="ref">
	<a href="addtask.jsp">Add Task</a>
	
	</div>
	
	
	<h3>Tasks</h3>
	<% List<Task> tasks = (List)request.getAttribute("tasks"); %>
	
	<div id="tab">
	
	
	<table>
	<tr>
	<th>Id</th> 
	<th>Title</th>
	<th>Description</th>
	<th>Priority</th>
	<th>DueDate</th>
	<th>Status</th>
	<th>Delete</th>
	<th>Edit</th>
	</tr>
	
	<%int num=1; %>
	<% for(Task task :tasks){%>
	<tr>
	<td><%= task.getTaskid() %></td>
	<td><%= task.getTasktitle() %></td>
	<td><%= task.getTaskdescription() %></td>
	<td><%= task.getTaskpriority() %></td>
	<td><%= task.getTaskduedate() %></td>
	<td><%= task.getTaskstatus()%></td>
	<td><a href="delete?id=<%= task.getTaskid() %>">delete</a></td>
	<td><a href="edit">Edit</a></td>
	</tr>
	
	<%num +=1; %>
	<%} %>
	</table>
	</div>
	
	

	
	
	
</body>
</html>