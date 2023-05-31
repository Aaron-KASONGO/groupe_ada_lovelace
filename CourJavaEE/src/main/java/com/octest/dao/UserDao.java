package com.octest.dao;

import java.util.List;
import com.octest.beans.Utilisateur;


//elle fait l'interface pour acceder a la connection a la base de donn�es ainsi toutes les methodes de requetes
// pour faire une request a la db on passera par cette interface
public interface UserDao {
	public String isValidLogin(String pseudo, String password);
	public void addUser(Utilisateur user);
	public List<Utilisateur> getAllUser();
	public void updateUser(Utilisateur user);
	public void deleteUser(int userId);

}
