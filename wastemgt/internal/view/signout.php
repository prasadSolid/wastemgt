<!DOCTYPE html>
<?php
//To start the session
if (!isset($_SESSION)) {
    session_start();
}
date_default_timezone_set("Asia/colombo");

$member_info = $_SESSION['user_info'];
//print_r($member_info);
//$track_id = $member_info[23];
$out = date("Y-m-d") . " " . date('H:i:s');
include '../common/dbconnection.php';
$ob = new dbconnection();
$con = $ob->connection();
include '../model/trackmodel.php';

$obj = new track();
//$obj->trackout($track_id, $out);
unset($_SESSION['user_info']); //To remove session by session
header("refresh:5;url=../view/login.php"); //To redirect within 3 second
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Waste Management</title>
        <link rel="shortcut icon" href="../images/favicon.png" type="image/png">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
    </head>

    <body>
        <div class="container-fluid">
               <div id="contentdiv">
                <div class="dashsignout">&nbsp;</div>
                <div style="text-align: center">
                    <p class="alert alert-success" style="font-size: 20px;">
                        You have successfully Signed Out<br />
                        <a href="../view/login.php">Login</a></p>
                    <br />
                    <img src="../images/loading.gif" />
                </div>
            </div>
        </div>
        <div class="row">
            <?php include '../common/include_footer.php'; ?>
        </div>
    </body>
    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
</html>



