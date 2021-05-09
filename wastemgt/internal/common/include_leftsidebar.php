<img src="../images/customers.jpg" class="img-circle" id="profilepic"/>
<hr/>
<p id="profilename"><?php echo $fname ?></p>
<p id="profilerole"><?php echo$roleName ?></p>
<hr/>
<div id="button">
    <ul>
        <li role="presentation"><a href="../view/dashboard.php" class="glyphicon glyphicon-home"> Home</a></li>
        <li role="presentation"><a href="../view/viewcustomer.php?customer_id=<?php echo $customer_id ?>" class="glyphicon glyphicon-user"> Profile</a></li>

        <li role="presentation"><a href="../view/mytask.php" class="glyphicon glyphicon-list"> MyTasks</a></li>
        <li role="presentation"><a href="../view/signout.php" class="glyphicon glyphicon-off"> Logout</a></li>
    </ul>
</div>
