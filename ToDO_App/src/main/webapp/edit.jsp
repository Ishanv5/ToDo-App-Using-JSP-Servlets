<%@page import="com.DAO.TodoDAO" %>
<%@page import="com.db.DbConnect" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.entity.TodoDetail" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit ToDo</title>
<%@include file="component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2">
<%@include file="component/navbar.jsp" %>
 <br><br>
 
<br><br>
<div class="container">
  <div class="row">
     <div class="col-md-6 offset-md-3">
        <div class="card">
            <div class="card-body">
            <h3 class="text-center text-success">Update ToDOs</h3>
            <%
              int id=Integer.parseInt(request.getParameter("id"));
              TodoDAO dao=new TodoDAO(DbConnect.getConn());
              TodoDetail t=dao.getTodoById(id);
              
            %>
                 <form action="update" method="post">
                 <input type="hidden" value="<%=t.getId() %>" name="id">
                 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" value="<%=t.getName() %>">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">TODO</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="todo" value="<%=t.getTodo() %>">
    
  </div>
  <div class="mb-3">
  <label for="exampleInputEmail1" class="form-label">Status</label>
       <select class="form-select" aria-label="Default select example" name="status" >
       <%
        if("Pending".equals(t.getStatus()))
        {%>
             <option value="Pending">Pending</option>
             <option value="Completed">Completed</option>
        <%}else
        {%>
        	<option value="Completed">Completed</option>
        	<option value="Pending">Pending</option>
        <%}
       %>
  

  
</select>
  </div>
  <div class="text-center">
    <button type="submit" class="btn btn-primary">UPDATE</button></div>

</form>
            </div>
        </div>
     </div>
  </div>
</div>
</body>
</html>