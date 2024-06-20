<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORGOT PASSWORD</title>
</head>
<body>
	
	
	<%-- <%@ include file = "template.jsp" %> --%>
	
	<h5> Enter the registered Email</h5>
	<form action="forgotpassword" method="post">
	
	<label for="email" class="form-label small">Email</label>
	<input type="email" class="form-control" id="email" name="email" required>
	<button type="submit">Submit</button>
	
	
	</form>
	
	
</body>
</html>