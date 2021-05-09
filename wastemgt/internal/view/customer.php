<!DOCTYPE html>
<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE); //To hide errors
include '../common/session.php'; //To get session info
include '../common/dbconnection.php'; //To get connection string
include '../model/customermodel.php'; //To call customer model

$ob = new dbconnection();
$con = $ob->connection();

$obj = new customer; //To create an object using customer class
$result = $obj->viewAllcustomer(); //To get all customers info
$nou = $result->num_rows;
$nopages = ceil($nou / 5); //No of pages

if ($_GET['page'] == "" || $_GET['page'] == 1) {
    $start = 0; //starting point
    $p = 1;
} else {
    $n = $_GET['page'];
    $start = 5 * ($n - 1); //starting point
    $p = $n;
}
$result = $obj->viewPagecustomer($start);
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Waste Management</title>
        <link rel="shortcut icon" href="../images/favicon.png" type="image/png">
        <link rel="stylesheet" type="text/css"href="../bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />

        <script type="text/javascript">
            function confMessage(str) {
                var r = confirm("Do you want to " + str + " this customer ?");
                if (!r) {
                    return false;
                }
            }
        </script>

    </head>
    <body>
        <div class="container-fluid">
            <div class="row header">
                <?php include '../common/include_header.php'; ?>
            </div>

            <div class="row">
                <div class="col-md-2 leftsidebar">
                    <?php include '../common/include_leftsidebar.php'; ?>
                </div>
                <div class="col-md-10">


                    <div class="tab">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="customer.php">customer</a></li>
                            <li><a href="applicant.php">Applicant</a></li>
                        </ul>
                    </div>
                    <div id="breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="../view/dashboard.php">Dashboard/</a></li>
                            <li class="active">customer Management</li>
                        </ol>
                    </div>

                    <div id="contentdiv">
                        <div class="dash">customer Management</div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6">
                                    <?php if ($role_id == '1') { ?>
                                        <a href="../view/addcustomer.php">
                                            <button type="button" class="btn btn-primary btn-sm">  <i class="glyphicon glyphicon-user"> </i>
                                                &nbsp;Add a customer
                                            </button>
                                        </a>
                                    <?php } ?>
                                </div>
                                <div class="col-md-6" style="text-align: right">
                                    <form action="searchcustomer.php" method="post">
                                        <input type="text" class="input-sm" required=""
                                               name="searchkey" placeholder="Search customers" />
                                        <button type="submit" name="search" class="btn btn-primary btn-sm">
                                            <i class="glyphicon glyphicon-search"></i> </button>
                                    </form>

                                </div>
                            </div>
                            <hr />
                            <div class="container-fluid">
                                <table class="table table-responsive table-striped">
                                    <tr>
                                        <th>&nbsp;</th>
                                        <th>customer ID</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Role</th>
                                        <th>Status</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                    <?php
                                    while ($row = $result->fetch_array()) {
                                        //To check the Image
                                        // if ($row['customer_image'] == "") {
                                        //     $path = "../images/customers.jpg";
                                        // } else {
                                        //     $path = "../images/customer_images/" . $row['customer_image'];
                                        // }
                                        //To check the status
                                        if (strtolower($row['cusStatus']) == "active") {
                                            $label = "Deactive";
                                            $class = "btn btn-danger";
                                            $iclass = "glyphicon glyphicon-remove";
                                        } else {
                                            $label = "Active";
                                            $class = "btn btn-info";
                                            $iclass = "glyphicon glyphicon-ok";
                                        }
                                        ?>
                                        <tr>
                                            <td>
                                                <img src="<?php echo $path; ?>"
                                                     width="35"
                                                     height="auto" />
                                                &nbsp;</td>
                                            <td>
                                                <?php echo $row['cusID']; ?>
                                            </td>
                                            <td>
                                                <?php echo $row['name'] ; ?>
                                            </td>
                                            <td>
                                                <?php echo $row['address']; ?>
                                            </td>
                                            <td>
                                                <?php echo $row['contactNo']; ?>
                                            </td>
                                            <td>
                                                <?php echo $row['email']; ?>
                                            </td>                                            
                                            <td>
                                                <?php echo $row['cusStatus']; ?>
                                            </td>
                                            <td>
                                                <a href="../view/viewcustomer.php?customer_id=<?php echo $row['customer_id']; ?>&status=View"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-open"></i> View</button></a>
                                                <a href="../view/updatecustomer.php?customer_id=<?php echo $row['customer_id']; ?>&status=Update&p=<?php echo $p; ?>">
                                                    <button type="button" class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i> Update</button></a>

                                                <a href="../controller/customercontroller.php?
                                                   customer_id=<?php echo $row['customer_id']; ?>&status=<?php echo $label; ?>&page=<?php echo $_GET['page']; ?>">
                                                    <button type="button" class="<?php echo $class; ?>" onclick="return confMessage('<?php echo $label; ?>')">
                                                        <i class="<?php echo $iclass; ?>"></i> <?php echo $label; ?></button></a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </table>

                                <ul class="pagination pagination-sm">
                                    <?php for ($i = 1; $i <= $nopages; $i++) { ?>
                                        <li <?php if ($i == $p) { ?>
                                                class="active"
                                            <?php } ?>>

                                            <a href="customer.php?page=<?php echo $i; ?>" ><?php echo $i; ?></a></li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <?php include '../common/include_footer.php'; ?>
            </div>
        </div>
    </body>

    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
</html>



