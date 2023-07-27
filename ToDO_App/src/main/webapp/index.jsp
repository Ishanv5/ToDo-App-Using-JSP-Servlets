<%@page import="com.db.DbConnect" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.DAO.TodoDAO" %>
<%@page import="com.entity.TodoDetail" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDo App By Ishan Software</title>
<%@include file="component/all_css.jsp" %>

</head>
<body>
<%@include file="component/navbar.jsp" %>


<br><br>
<h1 class="text-center text-success">ToDo App</h1>

<%
String SucMsg=(String)session.getAttribute("SucMsg");
if(SucMsg!=null)
{%>
	 <div class="alert alert-success" role="alert">
  <%=SucMsg %>
</div>
<%
session.removeAttribute("SucMsg");
}
%>

<%
String failedMsg=(String)session.getAttribute("failedMsg");
if(failedMsg!=null)
{%>
	 <div class="alert alert-denger" role="alert">
  <%=failedMsg %>
</div>
<%
session.removeAttribute("failedMsg");
}
%>
<br><br>
<div class="container">
<table class="table table-striped" border="1px">
   <thead class="bg-success text-white">
      <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Todo</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
      </tr>
   </thead>
   <tbody>
   <%
   TodoDAO dao=new TodoDAO(DbConnect.getConn());
   List<TodoDetail>todo=dao.getTodo();
   for(TodoDetail t:todo)
   {%>
	    <tr>
     <th scope="row"><%=t.getId() %></th>
     <th scope="row"><%=t.getName() %></th>
     <td><%=t.getTodo() %></td>
     <td><%=t.getStatus() %></td>
     <td>
     <a href="edit.jsp?id=<%=t.getId()  %>" class="btn btn-sm btn-success">Edit</a>
     <a href="delete?id=<%=t.getId()  %>" class="btn btn-sm btn-danger">Delete</a>
     </td>
     </tr>
   <%}
   %>
    
   </tbody>
</table></div>
</body>
</html>