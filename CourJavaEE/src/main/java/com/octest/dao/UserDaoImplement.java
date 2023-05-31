package com.octest.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.octest.beans.Utilisateur;

//import com.octest.beans.User;

public class UserDaoImplement implements UserDao {
	
	DaoFactory daoFactory = new DaoFactory();
	Connection getMySQLConnect = daoFactory.getMySQLConnect();
	
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	String query;
	@Override
	public String isValidLogin(String pseudo, String password) {
		String sqlQuery = "SELECT * FROM compte WHERE pseudo = ? AND password = ?";
        try {
            ps = getMySQLConnect.prepareStatement(sqlQuery);
            ps.setString(1, pseudo);
            ps.setString(2, password);
            
            resultSet = ps.executeQuery();
            
            if (!resultSet.next()) {
                System.out.println("Login/Mot de passe Incorrect");
                return "Error";
            } else {
                System.out.println("successful");
                return "Success";
                
            }
		
        }catch (SQLException ex) {
            System.err.println(ex.getMessage());
            return "Exception";
        }

	}

	@Override
	public void addUser(Utilisateur user) {
		// TODO Auto-generated method stub
		try {
            query = "INSERT INTO `utilisateur` (`nom`, `age`,  `poids`, `taille`) VALUES(?, ?, ?, ?)";
            ps = getMySQLConnect.prepareStatement(query);

            ps.setString(1, user.getNom());
            ps.setInt(2, user.getAge());
            ps.setInt(3, (int) user.getPoids());
            ps.setString(4, user.getTaille());
           
            ps.execute();
            System.out.println("Nouveau utilisateur enrégistré!");
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public List<Utilisateur> getAllUser() {
		// TODO Auto-generated method stub
		List <Utilisateur> listPatient = new ArrayList<Utilisateur>();
		try {
		    ps = getMySQLConnect.prepareStatement("SELECT * FROM utilisateur");
		    resultSet = ps.executeQuery();
		            
		    while (resultSet.next()) {
		    	int id = resultSet.getInt("id");
		        String nom = resultSet.getString("nom");
		        int age = resultSet.getInt("age");
		        int poids = resultSet.getInt("poids");
		        String taille = resultSet.getString("taille");
		        
		        Utilisateur patient = new Utilisateur(id, nom, age, poids, taille);
		        listPatient.add(patient);
		    }
		} catch (SQLException ex) {
		    System.err.println(ex.getMessage());
		}
		return listPatient;

	}

	@Override
	public void updateUser(Utilisateur user) {
		// TODO Auto-generated method stub
	    try {
	        String query = "UPDATE utilisateur SET nom = ?, age = ?, poids = ?, taille = ? WHERE id = ?";
	        PreparedStatement ps = getMySQLConnect.prepareStatement(query);
	        
	        ps.setString(1, user.getNom());
	        ps.setInt(2, user.getAge());
	        ps.setInt(3, user.getPoids());
	        ps.setString(4, user.getTaille());
	        ps.setInt(5, user.getId());
	        
	        int rowsUpdated = ps.executeUpdate();
	        
	        if (rowsUpdated > 0) {
	            System.out.println("Utilisateur mis à jour avec succès !");
	        } else {
	            System.out.println("Échec de la mise à jour de l'utilisateur.");
	        }
	        
	    } catch (SQLException ex) {
	        System.err.println(ex.getMessage());
	    }
	    
	}

	@Override
	public void deleteUser(int userId) {
		// TODO Auto-generated method stub
	    try {
	        String query = "DELETE FROM utilisateur WHERE id = ?";
	        PreparedStatement ps = getMySQLConnect.prepareStatement(query);
	        ps.setInt(1, userId);
	        
	        int rowsDeleted = ps.executeUpdate();
	        
	        if (rowsDeleted > 0) {
	            System.out.println("Utilisateur supprimé avec succès !");
	        } else {
	            System.out.println("Échec de la suppression de l'utilisateur.");
	        }
	        
	    } catch (SQLException ex) {
	        System.err.println(ex.getMessage());
	    }
		
	}

}
