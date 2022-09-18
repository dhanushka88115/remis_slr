<?php

session_start();
require_once("includes/config.php");
$un = $_SESSION['LogEmployeeId'];

if (!empty($_POST["newuser"])) {
    $newuser = $_POST["newuser"];
    $SqlString = "SELECT count(*) FROM user WHERE username=?";
    $stmt = $DbConnect->prepare($SqlString);
    $stmt->bind_param('c', $newuser);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();
    if ($count > 0)
        echo "<span style='color:red'>Username not available, It is already used</span>";
    else
        echo "<span style='color:red'>Username is Accepted</span>";
}

if (!empty($_POST["oldpassword"])) {
    $pass = $_POST["oldpassword"];
    $ei = $_SESSION['LogEmployeeId'];
    $un = $_SESSION['LogUserName'];
    $SqlString = "SELECT password FROM user where Username=? && Password=?";
    $stmt = $DbConnect->prepare($SqlString);
    $stmt->bind_param('ss', $un, $pass);
    $stmt->execute();
    $stmt->bind_result($SqlString);
    $stmt->fetch();
    $opass = $SqlString;
    $stmt->close();
    if ($opass == $pass)
        echo "<span style='color:green'>Password matched</span>";
    else
        echo "<span style='color:red'>Password not matched</span>";
}

//For Email
if (!empty($_POST["emailid"])) {
    $email = $_POST["emailid"];
    if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
        echo "error : You did not enter a valid email.";
    } else {
        $SqlString = "SELECT count(*) FROM userRegistration WHERE email=?";
        $stmt = $DbConnect->prepare($SqlString);
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $stmt->bind_result($count);
        $stmt->fetch();
        $stmt->close();
        if ($count > 0) {
            echo "<span style='color:red'> Email already exist. Please try again.</span>";
        }
    }
}

// For Registration Number
if (!empty($_POST["regno"])) {
    $regno = $_POST["regno"];
    $SqlString = "SELECT count(*) FROM userRegistration WHERE regNo=?";
    $stmt = $DbConnect->prepare($SqlString);
    $stmt->bind_param('s', $regno);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();
    if ($count > 0) {
        echo "<span style='color:red'> Registration number already exist. Please try again .</span>";
    }
}
?>
