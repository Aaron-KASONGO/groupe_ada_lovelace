package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.octest.dao.DaoFactory;
import com.octest.dao.UserDao;


@WebServlet("/user")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoFactory daoFactory = new DaoFactory();
	private UserDao userDao = daoFactory.getUserDao();
       
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// on envoi la liste des users à la jsp
		request.setAttribute("userList", userDao.getAllUser());
		this.getServletContext().getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
