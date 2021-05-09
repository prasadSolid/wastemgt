<?php

class customer {

    public function viewAllcustomer() {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer ORDER BY cusID DESC";
        //   $sql = "SELECT * FROM customer m,login l,role r WHERE m.customer_id=l.customer_id AND m.role_id=r.role_id ORDER BY m.customer_id DESC";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function viewcustomer($customer_id) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer m,login l,role r WHERE m.customer_id=l.customer_id AND m.role_id=r.role_id AND m.customer_id='$customer_id'";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function viewAcustomer($customer_name) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer WHERE LIKE customer_fname= '$customer_name' AND LIKE customer_lname= '%$customer_name'";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function searchAllcustomer($key) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer m,login l,role r WHERE m.customer_id=l.customer_id AND m.role_id=r.role_id AND (m.customer_fname LIKE '%$key%' OR m.customer_lname LIKE '%$key%' OR m.customer_id LIKE '%$key%' OR l.email LIKE '%$key%' OR r.roleName LIKE '%$key%' OR m.customer_status LIKE '%$key%')ORDER BY m.customer_id DESC";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function searchPagecustomer($start, $key) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer m,login l,role r WHERE m.customer_id=l.customer_id AND m.role_id=r.role_id AND (m.customer_fname LIKE '%$key%' OR m.customer_lname LIKE '%$key%' OR m.customer_id LIKE '%$key%' OR l.email LIKE '%$key%'OR r.roleName LIKE '%$key%' OR m.customer_status LIKE '%$key%')ORDER BY m.customer_id DESC LIMIT $start,5";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function viewPagecustomer($start) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM customer ORDER BY cusId DESC LIMIT $start,5";

        //$sql = "SELECT * FROM customer m,login l,role r WHERE m.customer_id=l.customer_id AND m.role_id=r.role_id ORDER BY m.customer_id DESC LIMIT $start,5";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    function checkEmail($email) {
        $con = $GLOBALS['con'];
        $sql = "SELECT * FROM login WHERE email='$email'";
        $result = $con->query($sql);
        $nor = $result->num_rows;
        return $nor;
    }

    function addcustomer($arr, $iname, $tmp_loc) {
        $customer_fname = $arr['customer_fname'];
        $customer_mname = $arr['customer_mname'];
        $customer_lname = $arr['customer_lname'];
        $customer_maidenname = $arr['customer_maidenname'];
        $customer_dob = $arr['customer_dob'];
        $customer_sex = $arr['customer_sex'];
        $customer_nic = $arr['customer_nic'];
        $customer_albatch = $arr['customer_albatch'];
        $email = $arr['email'];
        $customer_tel = $arr['customer_tel'];
        $customer_add = $arr['customer_add'];
        $customer_skypeid = $arr['customer_skypeid'];
        $customer_designation = $arr['customer_designation'];
        $customer_officeadd = $arr['customer_officeadd'];
        $role_id = $arr['role_id'];

        $con = $GLOBALS['con'];
        $sql = "INSERT INTO customer (customer_fname,customer_mname,customer_lname,customer_maidenname,customer_dob,customer_sex,customer_nic,customer_albatch,customer_tel,customer_add,customer_skypeid,customer_designation,customer_officeadd, role_id,customer_status) VALUES('$customer_fname','$customer_mname','$customer_lname','$customer_maidenname','$customer_dob','$customer_sex','$customer_nic','$customer_albatch','$customer_tel','$customer_add','$customer_skypeid','$customer_designation','$customer_officeadd','$role_id','Active')";
        $result = $con->query($sql) or die($con->error);
        $customer_id = $con->insert_id; //Last ID

        $p = sha1("123"); ///Encryption
        //Insert into login table
        $sqllog = "INSERT INTO login (email,password,customer_id) VALUE ('$email','$p','$customer_id')";
        $resultlog = $con->query($sqllog) or die($con->error);

        if ($iname != "") {
            $inewname = $customer_id . "_" . $iname;
            //To update Image
            $update = "UPDATE customer SET customer_image='$inewname' WHERE customer_id='$customer_id'";
            $con->query($update) or die($con->error);
            $new_path = "../images/customer_images/" . $inewname;
            //move image from temp loc to new path
            move_uploaded_file($tmp_loc, $new_path);
        }

        return $customer_id;
    }

    function updatecustomer($customer_id, $arr, $iname, $tmp_loc) {
        $customer_fname = $arr['customer_fname'];
        $customer_mname = $arr['customer_mname'];
        $customer_lname = $arr['customer_lname'];
        $customer_maidenname = $arr['customer_maidenname'];
        $customer_dob = $arr['customer_dob'];
        $customer_sex = $arr['customer_sex'];
        $customer_nic = $arr['customer_nic'];
        $customer_albatch = $arr['customer_albatch'];
        $email = $arr['email'];
        $customer_tel = $arr['customer_tel'];
        $customer_add = $arr['customer_add'];
        $customer_skypeid = $arr['customer_skypeid'];
        $customer_designation = $arr['customer_designation'];
        $customer_officeadd = $arr['customer_officeadd'];
        $role_id = $arr['role_id'];

        $con = $GLOBALS['con'];
        $sql = "UPDATE customer SET customer_fname='$customer_fname',customer_mname='$customer_mname',customer_lname='$customer_lname',customer_maidenname='$customer_maidenname',customer_dob='$customer_dob',customer_sex='$customer_sex',customer_nic='$customer_nic',customer_albatch='$customer_albatch',customer_tel='$customer_tel',customer_add='$customer_add',customer_skypeid='$customer_skypeid',customer_designation='$customer_designation',customer_officeadd='$customer_officeadd',role_id='$role_id' WHERE customer_id='$customer_id'";
        $result = $con->query($sql) or die($con->error);

        if ($iname != "") {
            $inewname = $customer_id . "_" . $iname;
            //To update Image
            $update = "UPDATE customer SET customer_image='$inewname' WHERE customer_id='$customer_id'";
            $con->query($update) or die($con->error);
            $new_path = "../images/customer_images/" . $inewname;
            //move image from temp loc to new path
            move_uploaded_file($tmp_loc, $new_path);
        }

        return $customer_id;
    }

    function deactivecustomer($customer_id) {
        $con = $GLOBALS['con'];
        $sql = "UPDATE customer SET customer_status='Deactive' WHERE customer_id='$customer_id'";
        $result = $con->query($sql);
    }

    function activecustomer($customer_id) {
        $con = $GLOBALS['con'];
        $sql = "UPDATE customer SET customer_status='Active' WHERE customer_id='$customer_id'";
        $result = $con->query($sql);
    }

    //for report pie chart age variation
    public function viewAllcustomerByAge() {
        $con = $GLOBALS['con'];
        $sql = "	SELECT '20-30' as age_range, COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >20) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <30)  THEN customer_id ELSE NULL END) AS 'frequency' FROM customer union all
SELECT '31-40' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >31) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <40) THEN customer_id ELSE NULL END) AS '31-40' FROM customer union all
SELECT '41-50' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >41) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <50) THEN customer_id ELSE NULL END)AS '41-50' FROM customer union all
SELECT '51-60' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >51) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <60) THEN customer_id ELSE NULL END) AS '51-60' FROM customer union all
SELECT '61-70' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >61) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <70) THEN customer_id ELSE NULL END) AS '61-70' FROM customer union all
SELECT '71-80' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >71) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <80) THEN customer_id ELSE NULL END) AS '71-80' FROM customer union all
SELECT '81-90' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >81) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <90) THEN customer_id ELSE NULL END) AS '81-90' FROM customer union all
SELECT '91-100' as age_range,COUNT(CASE WHEN (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 >91) and (DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),customer_dob)), '%Y')+0 <100) THEN customer_id ELSE NULL END) AS '91-100' FROM customer ";
        $result = $con->query($sql);
        return $result;
    }

    public function countcustomerByMonth() {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT Monthname(approved_date) AS month,count(*) AS frequency FROM customer_approval Where Year(approved_date)=Year(now()) GROUP BY Month(approved_date) ASC";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function countcustomerExpired() {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT monthName(customer_expiry_date) as month,count(*) AS frequency FROM customer Where Year(customer_expiry_date)=Year(now()) GROUP BY Month(customer_expiry_date) ";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

    public function countcustomerRenewed() {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT monthName(customer_renew_date) as month,count(*) AS frequency FROM customer Where Year(customer_renew_date)=Year(now()) GROUP BY Month(customer_renew_date) ";
        //Execute a query
        $result = $con->query($sql);
        return $result;
    }

}

?>
