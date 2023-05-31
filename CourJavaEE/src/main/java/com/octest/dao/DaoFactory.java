package com.octest.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DaoFactory {
	
	public UserDao getUserDao() {
    	return new UserDaoImplement();
    }

    public Connection getMySQLConnect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeeproject", "root", "");
            
            System.out.println("connection reussie");
            return connexion;
            
        }catch(Exception ex){
           System.err.println("Error : " + ex.getMessage());
           return null;
           
        }
    }

}
