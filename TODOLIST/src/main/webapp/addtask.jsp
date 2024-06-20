<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD TASK</title>

<style>

	html{
		background-image:url("https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_1280.jpg");
		background-repeat:no-repeat;
		background-size:cover;
	
	}

	#addtask{
	
		border:2px solid transparent;
		height:50vh;
		width:10vw;
		margin-left:20%;
		padding-left:50px;
		padding-right:50px;
		padding-top:25px;
		padding-bottom:30px;
		margin-top:200px;
		border-radius:40px;
		color:black;
		box-shadow: 0 0 10px 10px black;
	
	}
	#sub{
		padding:20px;
		border-radius:20px;
		
	}
</style>

</head>
<body>

	<div id="addtask">
	
	
	<form action="addtask" method="post">
	
	Task id  <input type="text" name="taskid" required><br><br>
	Task Title  <input type="text" name="tasktitle" required><br><br>
	Task Description <input type="text" name="taskdescription"><br><br>
	
	Options  <br>
	<label for="option1">
	<input type="radio" id="option1" value="low" name="taskpriority">Low
	</label><br>
	
	<label for="option2">
	<input type="radio" id="option2" value="medium" name="taskpriority">Medium
	</label><br>
	
	<label for="option3">
	<input type="radio" id="option3" value="high" name="taskpriority">High
	</label><br><br>
	
	Due Date <br>
	<input type="date" name="taskduedate"><br><br>
	
	<div id="sub">
	<input type="submit">
	</div>
	
	</form>
	
	</div>

</body>
</html>