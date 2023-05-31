package com.octest.beans;

public class Utilisateur {
	private int id;
	private String nom;
	private int age;
	private int poids;
	private String taille;

	
	public Utilisateur() {
		
	}

	public Utilisateur(int id, String nom, int age, int poids, String taille) {
		super();
		this.id = id;
		this.nom = nom;
		this.age = age;
		this.poids = poids;
		this.taille = taille;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getPoids() {
		return poids;
	}

	public void setPoids(int poids) {
		this.poids = poids;
	}

	public String getTaille() {
		return taille;
	}

	public void setTaille(String taille) {
		this.taille = taille;
	}
	

}
