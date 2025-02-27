<?php
session_start();
require_once("../model/usermodel.php");



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // $pdo = getConnexion();
    $pseudo = $_POST['pseudo'];
    $password = $_POST['password'];

    $user = getPseudo($pseudo);
    
    // $sql = "SELECT * FROM ktfu_users WHERE pseudo = :pseudo";
    // $stmt = $pdo->prepare($sql);
    // $stmt->execute([':pseudo' => $pseudo]);
    // $user = $stmt->fetch(PDO::FETCH_ASSOC);    
    // var_dump($user);
    
        
    // if (password_verify($password, $user['password'])) {
    // $_SESSION['id_users'] = $user['id'];
    if ($password == $user['password']) {
    // if ($pseudo == $user['pseudo']) { 
    $_SESSION['pseudo'] = $user['pseudo']; 
    header('Location: http://localhost/codes%20projet%20avec%20back/view/index.php');
    exit();
    } else {
        echo "Identifiants incorrects, veuillez réessayer.";
    }
}












// if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//     if (isset($_POST['pseudo']) && isset($_POST['password'])) 
//     {   $pseudo = $_POST['pseudo'];
//         $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
//         $pdo = getConnexion();

        // if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        //   echo "L'adresse mail n'est pas valide, veuillez réessayer.";
        // } else {
    //     $sql = "SELECT * FROM ktfu_users WHERE pseudo = :pseudo";
    //     $stmt = $pdo->prepare($sql);
    //     $stmt->execute(['pseudo' => $pseudo]);
    //     $user = $stmt->fetch();

    //         if ($user && password_verify($password, $user['password'])) {
    //         $_SESSION['id_users'] = $user['id'];
    //         header('Location: http://localhost/codes%20projet%20avec%20back/view/connexion.php');
    //     } else {
    //         echo "Identifiants incorrects, veuillez réessayer.";
    //     }
    // }

    // }


// pour tester la connexion :



// $user = [
//     "admin" => password_hash("12345", PASSWORD_DEFAULT)
// ];



// if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//     if (isset($_POST['pseudo']) && isset($_POST['password'])) {
//         getConnexion($pseudo, $password);
//         $pseudo = $_POST['pseudo'];
//         $password = $_POST['password'];
//         $_SESSION['pseudo'] = $pseudo;
//         header("Location: http://localhost/codes%20projet%20avec%20back/view/index.php");
//         exit();
//         } else {
//         echo "Identifiants incorrects, veuillez réessayer.";
        
    //     if (array_key_exists($pseudo, $user) && password_verify($password, $user[$pseudo])) {
    //         $_SESSION['pseudo'] = $pseudo;
    //         header("Location: http://localhost/codes%20projet%20avec%20back/view/index.php");
    //         exit();
    //     } else {
    //         echo "Identifiants incorrects, veuillez réessayer.";
    
    // }
// }
// }

?>