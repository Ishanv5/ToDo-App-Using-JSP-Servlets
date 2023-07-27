package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.TodoDAO;
import com.db.DbConnect;
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		TodoDAO dao=new TodoDAO(DbConnect.getConn());
		boolean f=dao.deleteTodo(id);
		HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("SucMsg","Todo Deleted Successfully!");
			resp.sendRedirect("index.jsp");
			System.out.println("Data updated Successfully !!");
		}else {
			session.setAttribute("failedMsg","Something went wrong");
			resp.sendRedirect("index.jsp");
		}
	}

}
