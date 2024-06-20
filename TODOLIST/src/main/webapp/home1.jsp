<%@page import="dao.Dao"%>
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
<title>HOME PAGE</title>
<style>

	html{
		background-image:url("https://cdn.pixabay.com/photo/2016/03/27/20/55/arm-1284248_960_720.jpg");
		bacckground-repeat:no-repeat;
		background-size:cover;
	}
	
	#ref{
	border:2px solid transparent;
	width:70px;
	height:20px; 
	border-radius:80px;
	text-decoration:none;
	padding:20px;
	background-color: yellow;

	}
	#log{
	border:2px solid transparent;
	width:50px;
	height:20px;
	border-radius:80px;
	text-decoration:none;
	padding:20px;
	background-color:yellow;
	margin-left:75%;
	}
	
	table,tr,td,th{
	border: 2px solid black;
	border-collapse:collapse;
	padding:20px;
	margin:10%;
	}
	
	a{
	text-decoration:none;
	}
	
	a:hover{
	color:red;
	}
	
	#sample{
		margin-left:20%;
		margin-bottom:35%;
		line-height:25px;
	}
	
	
	#content{
		margin-left:0%;
		font-size:20px;
		font-weight:bold;
		color:green;
	}
	h1{
	
		margin-left:40%;
	}
	
	
	
</style>
</head>
<body>


	<%@ include file="template.jsp" %>
	
	 
	<div id="content">
		 	  <!--get user from session  -->
	<% User user = (User)request.getSession().getAttribute("user"); %>
	<% String username = user.getUsername(); %>
	<p>Welcome <%= username %></p>
	<p>Email: <%= user.getUseremail() %></p>
	</div>
	
	<div id="image">
		<%String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
		<img alt="" src="data:image/jpeg;base64,<%= image %>" width="250" height="250"><br>
	</div>
	
	
	
	<div id="ref">
		<a href="addtask.jsp">Add Task</a>
	</div>
	
	
	<div id="sample">
	<h1>Tasks</h1>
	<%Dao dao = new Dao(); %>
	<% List<Task> tasks = dao.getalltasksByUserId(user.getUserid()); %>
	
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
	<%int num = 1; %>
	<% for(Task task :tasks){%>
	<tr>
	<td><%= num %></td>
	<td><%= task.getTasktitle() %></td>
	<td><%= task.getTaskdescription() %></td>
	<td><%= task.getTaskpriority() %></td>
	<td><%= task.getTaskduedate() %></td>
	<td><%= task.getTaskstatus()%></td>
	<td><a href="delete?id=<%= task.getTaskid() %>">delete</a></td>
	<td><a href="edit?id=<%= task.getTaskid() %>">Edit</a></td>
	</tr>
	
	<% num += 1; %>
	<%} %>
	</table>


	<div id="log">
	<a href="logout">Logout</a>
	</div>
		</div>
		
</body>
</html>