<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>

<style>

#login{

	border: 3px solid transparent;
	height:200px;
	width:350px;
	line-height:40px;
	text-align:center;
	margin-left: 15%;
	margin-top:10%;
	border-radius:45px;
	padding:40px;
	color:white;
	box-shadow: 0 0 5px 5px ;
}
h1{

	color:red;
}
body{
	
	background-image:url("https://cdn.pixabay.com/photo/2016/03/26/13/09/workspace-1280538_640.jpg");
	background-size:cover;
	background-repeat:no-repeat;
}
input[type="submit"]{

	border-radius:20px;
	padding:10px;
}
input[type="submit"]:hover{

	background-color:blue;

}
</style>

</head>
<body div id="login">
	<form action="userlogin" method="post">
	Email:<input type="text" name="email"><br><br>
	Password:<input type="password" name="password"><br><br>
	
	<div id="sub">
		<input type="submit">
	</div>
		
	</form>
	<br>
	<% String message = (String)request.getAttribute("message"); %>
	<% if(message!=null){%>
	<marquee><h1><%= message %></h1></marquee>
	<% } %>
</body>
</html>