<?php 
    session_start();
    $_SESSION = [];
    session_unset();
    session_destroy();

    setcookie('kunci'. '', time() - 3600 );
    setcookie('id_konsultan', '', time() - 3600);

    header("Location: login.php");
    exit;

?>