<?php

require_once("../model/usermodel.php");  
 
if (isset($_POST['pseudo']) && isset($_POST['password']) && isset($_POST['email']) && isset($_POST['gender']) && isset($_POST['level']) && isset($_POST['age'])){
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $password = htmlspecialchars($_POST['password']);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $gender = ($_POST['gender']);
    $level = ($_POST['level']);
    $age = htmlspecialchars($_POST['age']);
    // $picture = "default.png";

    $users = getAllUsers();
    foreach($users as $user){
        if($user['pseudo'] == $pseudo){
            echo "Ce pseudo est déjà utilisé.";
            exit();
        }
        if($user['email'] == $email){
            echo "Cette adresse email est déjà utilisée.";
            exit();
        }
    }


    createUser($pseudo, $password, $email, $age, $gender, $level);

    
    
    header("location: http://localhost/codes%20projet%20avec%20back/view/connexion.php");
    exit();
}
?>