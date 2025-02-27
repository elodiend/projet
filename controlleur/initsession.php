<?php
$sessionStatus = session_status();
session_start();

if (isset($_SESSION['pseudo'])){
    $pseudo = $_SESSION['pseudo'];
  
}

?>