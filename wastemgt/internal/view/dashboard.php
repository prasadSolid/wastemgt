<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/leftsidebar-styles.css">
</head>
<body>
    <div class="page-wrapper green-theme">
        <div class="header">
            <?php
            include '../common/include_header.php';
            ?>
        </div>
        
        <div>
        <?php
            include '../common/include_leftsidebar.php';
            ?>
        </div>

        <div class="mainbody">
            <div class="dash"><?php echo $roleName; ?>'s Dashboard</div>
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-4 col-xl-3 mt-3">
                        <div class="card  b p-2">
                            <div class="card-title">Chart 1</div>
                            <div class="card-body">
                                <canvas id="myChart" width="400" height="400"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 col-xl-3 mt-3">
                        <div class="card b p-2">
                            <div class="card-title">Chart 2</div>
                            <div class="card-body">

                            </div>
                        </div>
                    </div>
                    <div class="col-4 col-xl-3 mt-3">
                        <div class="card b p-2">
                            <div class="card-title">Chart 3</div>
                            <div class="card-body">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid" style="text-align: center">
                <?php
                //Start Owner
                if ($role_id == 1) {
                ?>
                    <!-- 1st Row start -->
                    <div class="row">
                        <div class="col-md-1">&nbsp;</div>
                        <div class="col-md-2">
                            <a href="customer.php"><img src="../images/bin.png" style="max-height: 100px; max-width: 100px;" /><br>Customers
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/event.php">
                                <img src="../images/truck.png" style="max-height: 100px; max-width: 100px;" /><br>Schedule
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/task.php">
                                <img src="../images/recycling-bin.png" style="max-height: 100px; max-width: 100px;" /><br>
                                Bin Types
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/scholarship.php">
                                <img src="../images/garbage.png" style="max-height: 100px; max-width: 100px;" /><br>Garbage Points
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/news.php">
                                <img src="../images/nuclear.png" style="max-height: 100px; max-width: 100px;" /><br>
                                Complaints
                            </a>
                        </div>
                        <div class="col-md-1">&nbsp;</div>
                    </div>
                    <!-- 1st Row end -->

                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>

                    <!-- 2nd Row start -->
                    <div class="row">
                        <div class="col-md-1">&nbsp;</div>

                        <div class="col-md-2">
                            <a href="../view/product.php">
                                <img src="../images/product.png" /><br>
                                Map
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/stock.php">
                                <img src="../images/stock.jpg" /><br>Drivers
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/ticket.php">
                                <img src="../images/truck.png" style="max-height: 100px; max-width: 100px;" /><br>
                                Vehicles
                            </a>
                        </div>

                        <div class="col-md-2">
                            <a href="../view/donation.php">
                                <img src="../images/bottles.png" style="max-height: 100px; max-width: 100px;" /><br>
                                Products
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/donor.php">
                                <img src="../images/stock.png" style="max-height: 100px; max-width: 100px;" \><br>Stock
                            </a>
                        </div>

                        <div class="col-md-1">&nbsp;</div>
                    </div>
                    <!-- 2nd Row end -->
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                    <!-- 3rd Row start -->
                    <div class="row">
                        <div class="col-md-1">&nbsp;</div>

                        <div class="col-md-2">

                        </div>

                        <div class="col-md-2">
                            <a href="../view/payment.php">
                                <img src="../images/payment.png" /><br>Payment
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/report.php">
                                <img src="../images/book.png" / style="max-height: 100px; max-width: 100px;"><br>Reports
                            </a>
                        </div>


                        <div class="col-md-2">
                            <a href="../view/backup.php">
                                <img src="../images/Backup.png" /><br>
                                Route
                            </a>
                        </div>
                        <div class="col-md-1">&nbsp;</div>
                    </div>
                    <!-- 3rd Row end -->
                <?php
                }
                //End Owner
                ?>

                <?php
                //Start Web Admin
                if ($role_id == 2) {
                ?>
                    <!-- 1st Row start -->
                    <div class="row">
                        <div class="col-md-1">&nbsp;</div>
                        <div class="col-md-2">
                            <a href="../view/member.php">
                                <img src="../images/user_role.png" /><br />
                                User Module</a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/notification.php">
                                <img src="../images/checkOut.png" /><br />
                                Notification Module</a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/report.php">
                                <img src="../images/stockAdjustments.png" /><br />
                                Report Module</a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/backup.php">
                                <img src="../images/categorize.png" /><br />
                                Back Up Module</a>
                        </div>
                        <div class="col-md-2">
                            <a href="../view/track.php">
                                <img src="../images/p.r.n_customer.png" />
                                <br />
                                Track Module</a>
                        </div>
                        <div class="col-md-1">&nbsp;</div>
                    </div>
                    <!-- 1st Row end -->
                <?php
                }
                //End Web Admin
                ?>
                <?php
                //Start Manager
                if ($role_id == 3) {
                ?>
                    <!-- 1st Row start -->
                    <div class="row">
                        <div class="col-md-3">
                            <a href="../view/customer.php">
                                <img src="../images/customer.png" /><br />
                                Customer Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/product.php">
                                <img src="../images/Product.png" /><br />
                                Product Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/order.php">
                                <img src="../images/addOrder.png" /><br />
                                Order Module</a>
                        </div>
                        <div class="col-md-3"><a href="../view/delivery.php">
                                <img src="../images/g.r.n.png" /><br />
                                Delivery Module</a></div>
                    </div>
                    <!-- 1st Row end -->
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                    <!-- 2st Row start -->
                    <div class="row">
                        <div class="col-md-3">&nbsp;</div>
                        <div class="col-md-3">
                            <a href="../view/report.php">
                                <img src="../images/stockAdjustments.png" /><br />
                                Report Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/feedback.php">
                                <img src="../images/checkIn.png" /><br />
                                Feedback Module</a>
                        </div>
                        <div class="col-md-3">&nbsp;</div>
                    </div>
                    <!-- 2st Row end -->
                <?php
                }
                //End Manager
                ?>
                <?php
                //Start Officer
                if ($role_id == 4) {
                ?>
                    <!-- 1st Row start -->
                    <div class="row">
                        <div class="col-md-3">
                            <a href="../view/customer.php">
                                <img src="../images/customer.png" /><br />
                                Customer Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/product.php">
                                <img src="../images/Product.png" /><br />
                                Product Module</a>
                        </div>
                        <div class="col-md-3"><a href="../view/order.php">
                                <img src="../images/addOrder.png" /><br />
                                Order Module</a></div>
                        <div class="col-md-3">
                            <a href="../view/payment.php">
                                <img src="../images/payments.png" /><br />
                                Payment Module</a>
                        </div>
                    </div>
                    <!-- 1st Row end -->
                    <div class="row">
                        <div class="col-md-12">&nbsp;</div>
                    </div>
                    <!-- 2st Row start -->
                    <div class="row">
                        <div class="col-md-3"><a href="../view/stock.php">
                                <img src="../images/stockBalance.png" /><br />
                                Stock Module</a></div>
                        <div class="col-md-3">
                            <a href="../view/delivery.php">
                                <img src="../images/g.r.n.png" /><br />
                                Delivery Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/notification.php">
                                <img src="../images/checkOut.png" /><br />
                                Notification Module</a>
                        </div>
                        <div class="col-md-3">
                            <a href="../view/report.php">
                                <img src="../images/stockAdjustments.png" /><br />
                                Report Module</a>
                        </div>
                    </div>
                    <!-- 2st Row end -->
                <?php
                }
                //End Officer
                ?>
            </div>


            <div class="footer">
                <?php
                include '../common/include_footer.php';
                ?>
            </div>
            <script src="../js/jquery-3.2.1.min.js" ></script>
            <script src="../bootstrap/js/bootstrap.min.js" crossorigin="anonymous"></script>
            <script src="https://kit.fontawesome.com/4e352e5914.js" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js"></script>
            <script src="../js/main.js"></script>
            <script src="../js/dashboard.js"></script>
            <script src="../js/leftsidebar.js"></script>
           
  </div>    </body > </html>