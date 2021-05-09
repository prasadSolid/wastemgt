<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Waste Management</title>
        <link rel="shortcut icon" href="../images/favicon.png" type="image/png">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
    </head>
    <body class="loginbody">
        <div class="container">
            <div class="row">
                <div class="login col-md-4 col-md-offset-4">
                    <div><img src="../images/logo.png" class="img-responsive center-block"></div>
                    <h1>Login</h1>

                    <div class="alert-danger" style="text-align: center" id="error">
                        <?php
                        //If there is an error
                        if (isset($_REQUEST['msg'])) {
                            echo base64_decode($_REQUEST['msg']);
                        }
                        ?>
                    </div>

                    <br/>
                    <form action="../controller/logincontroller.php"
                          method="post">
                        <input type="text" id="email" name="email"
                               placeholder="Email Address" />
                        <input type="password" id="pass" name="pass"
                               placeholder="Password" />
                        <input type="submit" name="login" value="Login"
                               class="login-btn login-btn-submit" />
                    </form>
                    <div>&nbsp;
                    </div>
                </div>
            </div>
        </div>

        <div id="footerdiv">
            <div class="logincopyright">&copy; PD Gunasekara 2021, ALL RIGHTS RESERVED</div>
        </div>
    </body>

    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('form').submit(function () {
                var email = $('#email').val();
                var pass = $('#pass').val();
                //To check both email and password
                if (email == "" && pass == "") {
                    $('#error').text("Both Email and password are Empty");
                    return false;
                }
                //To check empty email
                if (email == "") {
                    $('#error').text("Empty Email");
                    return false;
                }
                //To check empty password
                if (pass == "") {
                    $('#error').text("Empty password");
                    return false;
                }

            });
        });

    </script>
</html>
