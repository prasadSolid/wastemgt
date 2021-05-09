<?php

class track {

    public function trackin($in, $user_id, $ip) {
        $sql = "INSERT INTO track (track_in,user_id,ip) "
                . "VALUES ('$in','$user_id','$ip')";
        $con = $GLOBALS['con'];
        $result = $con->query($sql);
        $track_id = $con->insert_id; //Last Inserted ID
        return $track_id;
    }

    public function trackout($track_id, $out) {
        $sql = "UPDATE track SET track_out='$out',track_status='LogOut' "
                . "WHERE track_id='$track_id'";
        $con = $GLOBALS['con'];
        $result = $con->query($sql);
    }

    public function viewTracks($user_id) {
        $sql = "SELECT * FROM track t, user u WHERE u.user_id=t.user_id AND t.user_id='$user_id' ORDER BY track_id DESC";
        $con = $GLOBALS['con'];
        $result = $con->query($sql);
        return $result;
    }

    public function viewTrackByDU($user_id, $date) {
        $sql = "SELECT * FROM track t, user u WHERE u.user_id=t.user_id AND t.user_id='$user_id' AND track_in LIKE '$date%'";
        $con = $GLOBALS['con'];
        $result = $con->query($sql);
        return $result;
    }

}
?>

