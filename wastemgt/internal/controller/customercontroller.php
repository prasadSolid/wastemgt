<?php

include '../common/dbconnection.php';
include '../model/customermodel.php';

$ob = new dbconnection();
$con = $ob->connection();
$obj = new customer();
$result = $obj->viewAcustomer($customer_name);


$status = strtolower($_REQUEST['status']);

switch ($status) {
    case "add":
        $arr = $_POST;
        //To check whether image has been uploaded
        if ($_FILES['customer_image']['name'] != "") {
            $iname = $_FILES['customer_image']['name'];
            $tmp_loc = $_FILES['customer_image']['tmp_name'];
        } else {
            $iname = "";
            $tmp_loc = "";
        }
        $customer_id = $obj->addcustomer($arr, $iname, $tmp_loc);

        header("Location:../view/customer.php?customer_id=$customer_id");

        break;

    case "update":
        $arr = $_POST;
        $customer_id = $_REQUEST['customer_id'];
        $p = $_REQUEST['p'];
        $result = $obj->viewcustomer($customer_id);
        $row = $result->fetch_assoc();
        echo $customer_image = $row['customer_image'];
        //To check whether image has been uploaded
        if ($_FILES['customer_image']['name'] != "") {
            $iname = $_FILES['customer_image']['name'];
            $tmp_loc = $_FILES['customer_image']['tmp_name'];
            $path = "../images/customer_images/$customer_image";
            echo $path;
            unlink($path); //To delete an image
        } else {
            $iname = "";
            $tmp_loc = "";
        }
        $obj->updatecustomer($customer_id, $arr, $iname, $tmp_loc);
        header("Location:../view/customer.php?customer_id=$customer_id&page=$p");

        break;

    case "deactive":
        $customer_id = $_GET['customer_id'];
        $page = $_GET['page'];
        $obj->deactivecustomer($customer_id);
        header("Location:../view/customer.php?page=$page");
        break;

    case "active":
        $customer_id = $_GET['customer_id'];
        $page = $_GET['page'];
        $obj->activecustomer($customer_id);
        header("Location:../view/customer.php?page=$page");
        break;
}
?>
