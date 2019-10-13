<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.vir.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="CardDetails.jsp" method="post">
		Select Bank: <span><select name="banks">
			<option value=""></option>
			<option value="SBI">STATE BANK OF INDIA</option>
			<option value="HDFC">HDFC BANK</option>
			<option value="BANK OF BARODA">BANK OF BARODA</option>
			<option value="CITIBANK">CITIBANK</option>
			<option value="AXIS BANK">AXIS BANK</option>			
		</select></span>
		<br>
		<input type="radio" name="mode" id="CreditCard" checked>Credit Card<br>
		<input type="radio" name="mode" id="DebitCard">Debit Card<br>
		<input type="submit" value="Proceed">
		</form>
		<% Student student=(Student)session.getAttribute("student");
			session.setAttribute("student", student);
		%>
</body>
</html>