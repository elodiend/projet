<?php

// require("../model/usermodel.php");


// if ($_SERVER['REQUEST_METHOD'] == 'POST') {
//     if (isset($_POST['email']) && isset($_POST['password'])) 
//     {   $mail = $_POST['email'];
//         $psd = password_hash($_POST['password'], PASSWORD_DEFAULT);

//         if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
//           echo "L'adresse mail n'est pas valide, veuillez réessayer.";
//         } else {
//         $sql = "SELECT * FROM users WHERE email = :email";
//         $stmt = $pdo->prepare($sql);
//         $stmt->execute(['email' => $mail]);
//         $user = $stmt->fetch();

//             if ($user && password_verify($psd, $user['password'])) {
//             $_SESSION['user_id'] = $user['id'];
//             header('Location: index.php');
//         } else {
//             echo "Identifiants incorrects, veuillez réessayer.";
//         }
//     }

//     }
// }

// pour tester la connexion :

session_start();

$user = [
    "admin" => password_hash("12345", PASSWORD_DEFAULT)
];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['pseudo']) && isset($_POST['password'])) {
        $pseudo = $_POST['pseudo'];
        $password = $_POST['password'];
        
        if (array_key_exists($pseudo, $user) && password_verify($password, $user[$pseudo])) {
            $_SESSION['pseudo'] = $pseudo;
            header("Location: http://localhost/codes%20projet%20avec%20back/view/index.php");
            echo "bienvenue $pseudo";
            exit();
        } else {
            echo "Identifiants incorrects, veuillez réessayer.";
    
    }
}
}

?>