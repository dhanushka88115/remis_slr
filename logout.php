<?php
session_start();
unset($_SESSION['LogEmployeeId']);
session_destroy();
//header('Location:../index.php');
header('Location:index.php');
?>
