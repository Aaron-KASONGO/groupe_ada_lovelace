package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.dao.DaoFactory;
import com.octest.dao.UserDao;


@WebServlet("/authentification")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String msg = null;
	
	DaoFactory daoFactory = new DaoFactory();
	private UserDao userDao = daoFactory.getUserDao();

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String pseudo = request.getParameter("pseudo");
	    String password = request.getParameter("password_");
	    
	    if (userDao.isValidLogin(pseudo, password).equals("Error")) {
	        msg = "Identifiant incorrect";
	        request.setAttribute("msg", msg);
	        this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
	    } else {
	        msg = "Vous êtes connecté !";
	        request.setAttribute("msg", msg);
	        this.getServletContext().getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
	    }
	}

}
