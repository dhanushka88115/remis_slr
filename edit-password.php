<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

// code for change password
if (isset($_POST['changepwd'])) {
    $op = $_POST['oldpassword'];
    $np = $_POST['newpassword'];
    $ei = $_SESSION['LogEmployeeId'];
    $un = $_SESSION['LogUserName'];
    $udate = date('Y-m-d h:m:s');
    $sql = "SELECT password FROM user where Username=? && Password=?";
    $chngpwd = $DbConnect->prepare($sql);
    $chngpwd->bind_param('ss', $un, $op);
    $chngpwd->execute();
    $chngpwd->store_result();
    $row_cnt = $chngpwd->num_rows;

//    exit("test exit");

    if ($row_cnt > 0) {
        $con = "update user set Password=?, Updatedby=?, UpdatedTime=CURRENT_TIMESTAMP() where Username=?";
        $chngpwd1 = $DbConnect->prepare($con);
        $chngpwd1->bind_param('sss', $np, $un, $un);
        $chngpwd1->execute();

        $_SESSION['msg'] = "";
        echo ("<script language='JavaScript'>
                window.alert('Password changed successfully!')
                window.location.href='dashboard.php';</script>");
    } else {
        $_SESSION['msg'] = "Current password is not correct!";
//        echo ("<script language='JavaScript'>
//                window.alert('Current password is not correct!')
//                window.location.href='edit-password.php';</script>");
    }
}
?>

<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="theme-color" content="#3e454c">

        <title>Change Password</title>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/fileinput.min.css">
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/style.css">

        <script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
        <script type="text/javascript" src="js/validation.min.js"></script>

        <script type="text/javascript">
            function valid()
            {
                if (document.changepwd.newpassword.value !== document.changepwd.cpassword.value)
                {
                    alert("Retype new password not match!");
                    document.changepwd.cpassword.focus();
                    return false;
                }
                return true;
            }
        </script>

        <script>
            function checkAvailability() {
                $("#loaderIcon").show();
                jQuery.ajax({
                    url: "check_availability.php",
                    data: 'emailid=' + $("#emailid").val(),
                    type: "POST",
                    success: function (data) {
                        $("#user-availability-status").html(data);
                        $("#loaderIcon").hide();
                    },
                    error: function () {}
                });
            }

            function checkpass() {
                $("#loaderIcon").show();
                jQuery.ajax({
                    url: "check_availability.php",
                    data: 'oldpassword=' + $("#oldpassword").val(),
                    type: "POST",
                    success: function (data) {
                        $("#password-availability-status").html(data);
                        $("#loaderIcon").hide();
                    },
                    error: function () {}
                });
            }
        </script>

    </head>

    <body>

        <?php include('includes/header.php'); ?>
        <div class="ts-main-content">
            <?php include('includes/sidebar.php'); ?>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="page-title">Change Password</h2>
                            <?php
                            $aid = $_SESSION['LogEmployeeId'];
                            $ret = "select * from employeewithuserview where EmployeeId=?";
                            $stmt = $DbConnect->prepare($ret);
                            $stmt->bind_param('i', $aid);
                            $stmt->execute();
                            $res = $stmt->get_result();
                            //$cnt=1;
                            while ($row = $res->fetch_object()) {
                                ?>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">User Profile Details</div>
                                            <div class="panel-body">
                                                <form method="post" class="form-horizontal" name="changepwd" id="changepwd" onSubmit="return valid();">

                                                    <?php if (isset($_POST['changepwd'])) { ?>
                                                        <p style="color: red"><?php echo htmlentities($_SESSION['msg']); ?></p>
                                                    <?php } ?>

                                                    <div class="hr-dashed"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">User Name</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" value="<?php echo $row->Username; ?>" disabled class="form-control">
                                                            <!--<span class="help-block m-b-none">Username can't be changed.</span>-->
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Employee ID</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" value="<?php echo $row->EmployeeId; ?>" disabled class="form-control">
                                                            <!--<span class="help-block m-b-none">Employee ID can't be changed.</span>-->
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Full Name</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" value="<?php echo $row->FirstName; ?>&nbsp;<?php echo $row->LastName; ?>" disabled class="form-control">
                                                            <!--<span class="help-block m-b-none">Full name can't be changed.</span>-->
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Current Password</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" value="" name="oldpassword" id="oldpassword" onBlur="checkpass()" required="required">
                                                            <span id="password-availability-status" class="help-block m-b-none" style="font-size:12px;"></span> 
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">New Password</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" value="" name="newpassword" id="newpassword" required="required">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Retype New Password</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" value="" name="cpassword" id="cpassword" required="required">                                                           
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4 col-sm-offset-4">
                                                        <!--<button class="btn btn-default" type="submit">CANCEL</button>-->
                                                        <input type="submit" name="changepwd" Value="U P D A T E" class="btn btn-primary">
                                                    </div>

                                                </form>
                                            </div>               
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 	
            </div>

            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap-select.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.dataTables.min.js"></script>
            <script src="js/dataTables.bootstrap.min.js"></script>
            <script src="js/Chart.min.js"></script>
            <script src="js/fileinput.js"></script>
            <script src="js/chartData.js"></script>
            <script src="js/main.js"></script>

    </body>
</html>