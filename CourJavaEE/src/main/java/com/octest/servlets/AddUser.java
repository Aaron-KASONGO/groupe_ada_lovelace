package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.Utilisateur;
import com.octest.dao.DaoFactory;
import com.octest.dao.UserDao;

@WebServlet("/adduser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoFactory daoFactory = new DaoFactory();
	private UserDao userDao = daoFactory.getUserDao();
       

    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/adduser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Utilisateur user = new Utilisateur();
		
		user.setNom(request.getParameter("nom"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setPoids(Integer.parseInt(request.getParameter("poids")));
		user.setTaille(request.getParameter("taille"));
		
		userDao.addUser(user);
		//response.sendRedirect("userlist");
		
	}

}
