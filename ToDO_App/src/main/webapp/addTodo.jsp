<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add ToDo</title>
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
            <h3 class="text-center text-success">Add ToDOs</h3>
                 <form action="add_todo" method="post">
                 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">TODO</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="todo">
    
  </div>
  <div class="mb-3">
  <label for="exampleInputEmail1" class="form-label">Status</label>
       <select class="form-select" aria-label="Default select example" name="status">
  <option selected>--Select--</option>
  <option value="Pending">Pending</option>
  <option value="Completed">Completed</option>
  
</select>
  </div>
  <div class="text-center">
    <button type="submit" class="btn btn-primary">ADD</button></div>

</form>
            </div>
        </div>
     </div>
  </div>
</div>
</body>
</html>