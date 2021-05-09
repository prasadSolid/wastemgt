<?php

class login {

    public function loginvalidate($email, $pass) {
        $con = $GLOBALS['con'];
        //sql query
        $sql = "SELECT * FROM login l,customer c,role r WHERE l.email='$email' AND l.password='$pass' 
        AND l.userID=c.cusID AND c.roleID=r.roleID AND c.cusStatus='Active'";

// $sql = "SELECT * FROM login l,customer c,role r WHERE l.email='$email' AND l.password='$pass' 
// AND l.userID=c.cusID AND c.roleID=r.roleID AND c.cusStatus='Active'";
        //Execute a query
        $result = $con->query($sql);
        return $result;

        //note: needs to add emp login
    }

}

?>
