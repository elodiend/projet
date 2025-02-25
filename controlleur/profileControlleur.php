<?php
require("../model/usermodel.php");

$pdo = getConnexion();
$pseudo = $_SESSION['pseudo'];

$sql = "SELECT * FROM ktfu_users WHERE pseudo = :pseudo";
$stmt = $pdo->prepare($sql);
$stmt->execute([':pseudo' => $pseudo]);
$user = $stmt->fetch(PDO::FETCH_ASSOC); 

?>