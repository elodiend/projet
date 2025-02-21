<?php

require("../model/usermodel.php");  
 
if (isset($_POST['ok'])) {
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $password = htmlspecialchars($_POST['password']);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $gender = ($_POST['gender']);
    $level = ($_POST['level']);
    $age = htmlspecialchars($_POST['age']);

    createUser($pseudo, $password, $email, $age, $gender, $level);

    
    
    header("location: http://localhost/codes%20projet%20avec%20back/view/connexion.php");
    exit();
}
?>