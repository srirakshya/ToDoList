<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
<style>

	
	input[type="submit"]{
	
		margin-left:25%;
		border-radius:20px;
		background-color:blue;
		padding:15px;
	}
	input[type="submit"]:hover{
	color:yellow;
	
	}
	
	#dec{
	
		height:500px;
		width:400px;
		border-radius:20px;
		margin-left:35%;
		padding:40px;
		line-height:30px;
		background-color:white; 
		box-shadow:0 0 10px 10px;
	}
	legend{
	
		color:blue;
	
	}
	html{
		background-image:url("https://cdn.pixabay.com/photo/2016/03/26/13/09/cup-of-coffee-1280537_640.jpg");
		background-size:cover;
		background-repeat:no-repeat;
	
	}
</style>
</head>
<body>
	<fieldset id="dec" >
	
	<legend><h2>User Details</h2></legend>
	
	<form action="saveuser" method="post" enctype="multipart/form-data"> 
	id:<input type="text" name="id"><br><br>
	name:<input type="text" name="name"><br><br>
	email:<input type="email" name="email"><br><br>
	contact:<input type="text" name="contact"><br><br>
	password:<input type="text" name="password"><br><br>
	image:<input type="file" name="image "><br><br>	
	
	<div id="class">
		<input type="submit">
	
	</div>
	
	</form>
	
	</fieldset>
</body>
</html>