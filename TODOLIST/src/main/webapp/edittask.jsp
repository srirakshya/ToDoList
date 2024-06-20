<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT TASK</title>
<style>

	
	html{
		background-image:url("https://cdn.pixabay.com/photo/2015/01/08/18/25/desk-593327_1280.jpg");
		background-repeat:no-repeat;
		background-size:cover;
	}
	legend{
		/* margin-left:40%; */
		color:blue;
	}
	#edit{
		
		height:600px;
		width:400px;
		border-radius:20px;
		margin-left:35%;
		padding:20px;
		line-height:25px;
		background-color:white;
		box-shadow:0 0 10px 10px;
	}
	input[type="submit"]{
		margin-left:30%;
		border-radius:20px;
		padding:15px;
		background-color:blue;
	}
	input[type="submit"]:hover{
	
	color:yellow;
	}
	

</style>
</head>
<body>


<fieldset id="edit">
	<legend><h2>Edit Task</h2></legend>


<%Task task = (Task)request.getAttribute("task"); %>

<form action="updatetask" method="post">

task id:<input type="text" name="taskid" hidden="" value="<%= task.getTaskid() %>"><br><br>
task title:<input type="text" name="tasktitle" value="<%=task.getTasktitle() %>"><br><br>
task description:<input type="text" name="taskdescription" value="<%=task.getTaskdescription() %>"><br><br>
Current task priority:<h4><%= task.getTaskpriority() %></h4>

Task priority:<br>
	<label for="option1">
		<input type="radio" id="optional" value="low" name="taskpriority">Low
	</label><br>
	
	<label for="option2">
		<input type="radio" id="option2" value="medium" name="taskpriority">Medium
	</label><br>
	
	<label for="option3">
		<input type="radio" id="option3" value="high" name="taskpriority">High
	</label><br>
	
Due Date:<input type="date" name="taskduedate" value="<%= task.getTaskduedate() %>"><br><br>
Status:<input type="text" name="taskstatus" value="<%= task.getTaskstatus() %>"><br><br>



	<input type="submit">


</form>
	

</fieldset>



</body>
</html>