package com.entity;

public class TodoDetail {
   private int id;
   private String name;
 
   @Override
public String toString() {
	return "Entity [id=" + id + ", name=" + name + ", todo=" + todo + ", status=" + status + "]";
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getTodo() {
	return todo;
}
public void setTodo(String todo) {
	this.todo = todo;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
private String todo;
   private String status;
}
