<?php

//To start the session
if (!isset($_SESSION)) {
    session_start();
}
//To set default time zone
date_default_timezone_set("Asia/colombo");

//Server side validation
if ($_POST['email'] == "" || $_POST['pass'] == "") {
//To encode the message
    $msg = base64_encode("Empty Email address or Password");
//Data passing through URL
    header("Location:../view/login.php?msg=$msg");
    exit();
}
include '../common/dbconnection.php';
include '../model/loginmodel.php';

//Get the db connection
$ob = new dbconnection();
$con = $ob->connection();

//Get the values
$email = trim($_POST['email']); //remove space before and after
$pass = sha1(trim($_POST['pass'])); //Encript the password to with table field
//Get login details for given user
$obj = new login();
$result = $obj->loginvalidate($email, $pass);
$row = $result->fetch_array();

$userName = $row['name'];
// $customer_expiry_date = $row['customer_expiry_date'];


if ($result->num_rows == 1 ){
        header("Location:../view/dashboard.php");

}
else{
    header("Location:../view/login.php?msg=$msg");

}


//To get customer details
     $_SESSION['user_info'] = $row;
    // $in = date("Y-m-d") . " " . date("H:i:s");
    $UserID = $row['cusID'];
    // $ip = $_SERVER['REMOTE_ADDR'];
    // include '../model/trackmodel.php';
    // $objt = new track();
    // $track_id = $objt->trackin($in, $customer_id, $ip);
    // array_push($_SESSION['customer_info'], $track_id);



   
    

?>
