<?php
$sessionStatus = session_status();

if ($sessionStatus == PHP_SESSION_NONE) {
    session_start();

}

?>