<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	form{
		border:2px solid black;
		height:280px;
		width:250px;
		padding:30px;
		margin-left:38%;
		background-color:violet;
		margin-top:9%;
	}
</style>
</head>
<body>
	<form action="saveuser" method="post" enctype="multipart/form-data"> 
	id:<input type="text" name="id"><br><br>
	name:<input type="text" name="name"><br><br>
	email:<input type="email" name="email"><br><br>
	contact:<input type="text" name="contact"><br><br>
	password:<input type="text" name="password"><br><br>
	image:<input type="file" name="image "><br><br>	
	
	<input type="submit">
	
	</form>
</body>
</html>