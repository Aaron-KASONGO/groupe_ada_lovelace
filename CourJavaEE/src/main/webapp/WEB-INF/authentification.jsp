<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="style/new_style.css">
    <title>Connexion</title>
  </head>
  <body>
  <div class="loginBlock">
      <img src="assets/img/_news.png" alt="">
      <h2 style="color: lightgrey; margin:0; font-size:30px;">Sign In</h2>
      <p style="color:#fff;">Veuillez entrer vos identifiant!</p>
      
      <p style="color: red;"><c:out value="${ msg }" /></p>
      
      <form action="" method="POST">
          <div style="margin-bottom: 5px;">
              <input style="height:30px;" name="pseudo" type="text" class="form-control" placeholder="Entrez votre nom"/>
          </div>
          <div style="margin-bottom: 10px;">
              <input style="height:30px;" name="password_" type="password" class="form-control" placeholder="Entrez votre identifiant"/>
          </div>
          
          <a style="color: #fff;" href="">Creer un compte</a>
          <input class="valid_btn" type="submit" name="submit" value="Connexion"/>

      </form>
  </body>
</html>