<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.vir.model.*"  %>
    <%@ page import ="com.vir.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   if(request.getAttribute("alreadyenroll")!=null){%>
   
   <span><%=(String)request.getAttribute("alreadyenroll")%></span><%} %>
<%

 BatchDao batchdao = new BatchDAOImpl();
  CourseDAO courseDao = new CourseDAOImpl();
  TrainerDao tdao=new TrainerDAOImpl();
 List<Batch> batchList = batchdao.getAllBatch();
 
 for(Batch batch:batchList){%>
   <form action="enrollment" method="post">
    
     course : <%
          Course course = courseDao.findById(batch.getCourseID());%>
          <span><%= course.getCourseName() %></span>
     startDate: <span><%= batch.getStartDate() %></span>
     EndDate: <span><%= batch.getEndDate() %></span>
     Price: <span><%= batch.getPrice() %></span>
     Trainer: <span> 
     		<% Trainer t=tdao.findById(batch.getTID()); %>
     		<%= t.getTrainerName() %>
     </span>
     <% session.setAttribute("batch", batch); %>
     <input type="submit" value="Enroll">
          
      
    
    </form>
 
       <%} %>
  
</body>
</html>