<?php
session_start();
session_destroy();
header("Location: http://localhost/codes%20projet%20avec%20back/view/index.php");
exit();
?>