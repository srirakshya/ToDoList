package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Task;
import dto.User;

@WebServlet("/addtask")
public class AddTask extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		int taskid = Integer.parseInt(req.getParameter("taskid"));
		String tasktitle = req.getParameter("tasktitle");
		String taskdescription = req.getParameter("taskdescription");
		String taskpriority = req.getParameter("taskpriority");
		String taskduedate = req.getParameter("taskduedate");
		
		User user = (User)req.getSession().getAttribute("user");
		int userid = user.getUserid();
		
		
		
		Dao dao = new Dao();
		
		try {
			
			Task task = new Task(dao.getTaskId(), tasktitle, taskdescription, taskpriority, taskduedate, "pending", userid);
			int res = dao.createtask(task);
			if(res>0) {
				
				HttpSession session = req.getSession();
				User u = (User)session.getAttribute("user");
				req.setAttribute("tasks", dao.getalltasksByUserId(u.getUserid()));
				
				RequestDispatcher dispatcher = req.getRequestDispatcher("home1.jsp");
				dispatcher.include(req, resp);
				
//				resp.getWriter().println("Task has been created");
			}else {
				resp.getWriter().print("Task failed");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
