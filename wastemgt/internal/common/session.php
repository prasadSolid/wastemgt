<?php

//To start the session
if (!isset($_SESSION)) {
    session_start();
}
//To get count from session array
$count = count($_SESSION['user_info']);
//If not login
if ($count == 0) {
    $msg = "Please Login...";
    $msg = base64_encode($msg);
    header("Location:../view/login.php?msg=$msg");
    exit();
}
$user_info = $_SESSION['user_info'];
$fname = $user_info['name'];
$roleName = $user_info['roleName'];
$user_id = $user_info['cusID'];
$role_id = $user_info['roleID'];

?>
