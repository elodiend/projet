<?php
require_once("../controlleur/initsession.php");
require_once("../model/usermodel.php");

$pseudo = $_SESSION['pseudo'];
// function getPseudo($pseudo){
//     $pdo = getConnexion();

//     $sql = "SELECT * FROM ktfu_users WHERE pseudo = :pseudo";
//     $stmt = $pdo->prepare($sql);
//     $stmt->execute([':pseudo' => $pseudo]);
//     $user = $stmt->fetch(PDO::FETCH_ASSOC);
//     return $user;
// }

$user = getPseudo($pseudo);



/****************** Edition du profil ************/

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['picture'])) 
    {
        $file = $_FILES['picture'];
        $imgname = htmlspecialchars($_FILES['picture']['name']);
        $extension = pathinfo($imgname, PATHINFO_EXTENSION); 
        $img = "../assets/Images/uploadprofil" . $imgname;

        // echo '<img src="../assets/Images/uploadprofil'.$user["picture"].'">';
        
        
                
            if (strtolower($extension) === "jpeg" || strtolower($extension) === "png" || strtolower($extension) === "jpg") 
            {
                if (move_uploaded_file($file['tmp_name'], $img)) {
                    $sql = "UPDATE ktfu_users SET picture = :picture WHERE pseudo = :pseudo";
                    $stmt = $pdo->prepare($sql);
                    $stmt->execute([':picture' => $imgname, ':pseudo' => $pseudo]);
                    header('Location: http://localhost/codes%20projet%20avec%20back/view/profile.php');
                
                    
                }
            } else { echo "Format d'image non valide";
            }
        }


?>

<!-- echo '<img src="'. $img.'">'; 
 pour afficher l'image uploadée-->