<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PROFILE</title>
</head>
<body>
	<%User user = (User)request.getSession().getAttribute("user"); %>
	<form action="saveuser" method="post" enctype="multipart/form-data">
	
	<label for="name" class="form-label small">Name</label>
	<input type="text" class="form-control" value="<%= user.getUsername()%>" id="name" name="name">
	
	<label for="email" class="form-label small">Email</label>
	<input type="email" class="form-control" value="<%= user.getUseremail()%>" id="email" name="email">
	
	<label for="contact" class="form-label small">Contact</label>
	<input type="text" class="form=control" value="<%=user.getUsercontact()%>" id="contact" name="contact">
	
	<label for="password" class="form-label small">Password</label>
	<input type="password" class="form-control" value="<%=user.getUserpassword()%>" id="password" name="password">
	
	<label for="image" class="form-label small">Image</label>
	<input type="file" class="form-control" value="<%=user.getUserimage()%>" id="image" name="image">
	
	<button type="submit">Submit</button>
	
	</form>
</body>
</html>