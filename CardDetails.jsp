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
<form action="Payment" method="post">
	Enter Card Number: <span><input type="text" name="CardNumber"></span><br>
	Enter CVV: <span> <input type="text" name="CVV"></span><br>
	Enter Expiry Date: <span> <input type="month" id="start" name="start"
       min="2019-08" value="2019-10"></span>
       <input type="submit" value="Pay">
       <%  Student student = (Student)session.getAttribute("student"); 
       	   session.setAttribute("paymentstatus",student);
       %>
       </form>
	
</body>
</html>