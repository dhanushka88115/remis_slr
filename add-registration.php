<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

//code for update email id
//if (isset($_POST['update'])) {
//    $email = $_POST['emailid'];
//    $aid = $_SESSION['LogEmployeeId'];
//    $udate = date('Y-m-d');
//    $query = "update admin set email=?,updation_date=? where id=?";
//    $stmt = $DbConnect->prepare($query);
//    $rc = $stmt->bind_param('ssi', $email, $udate, $aid);
//    $stmt->execute();
//    echo"<script>alert('Email id has been successfully updated');</script>";
//}
//
// code for add password
if (isset($_POST['adduser'])) {
    $id = $_GET['id'];
    $nu = $_POST['newuser'];
    $np = $_POST['newpassword'];
    $ei = $_SESSION['LogEmployeeId'];
    $un = $_SESSION['LogUserName'];
    $ri = $_SESSION['LogUserRoleId'];
    
    $udate = date('Y-m-d h:m:s');

    $sqlstr = "SELECT count(*) FROM user where Username=?";
    $stmt = $DbConnect->prepare($sqlstr);
    $stmt->bind_param('s', $nu);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
//    $stmt->store_result();
//    $count = $stmt->num_rows;
    $stmt->close();

    if ($count > 0) {
        echo"<script>alert('Username already exist, Please check');</script>";
    } else {
        $query1 = "insert into user(EmployeeId, UserName, Password, RoleId, Createdby, CreatedTime) values(?,?,?,?,?,CURRENT_TIMESTAMP())";
//        RoleId,
        $stmt = $DbConnect->prepare($query1);
        $rc = $stmt->bind_param('issis', $id, $nu, $np, $ri, $un);
        $stmt->execute();
        $stmt->close();

        echo "<script>alert('New User Record Succssfully Added');</script>";
        $_SESSION['msg'] = "New User Record Succssfully Added";
    }

//    if ($row_cnt > 0) {
//        $con = "update user set Password=?, Updatedby=?, UpdatedTime=? where EmployeeId=?";
//        $chngpwd1 = $DbConnect->prepare($con);
//        $chngpwd1->bind_param('sssi', $np, $un, $udate, $ei);
//        $chngpwd1->execute();
//        $_SESSION['msg'] = "Password Changed Successfully!";
//    } else {
//        $_SESSION['msg'] = "Old Password not match!";
//    }
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

        <title>New User Registration</title>
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
                    alert("New Password and Retype Password not match");
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
                            <h2 class="page-title">New User Registration</h2>
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
                                            <div class="panel-heading">Profile Details</div>
                                            <div class="panel-body">
                                                <form method="post" class="form-horizontal" name="addpwd" id="change-pwd" onSubmit="return valid();">
                                                    <?php if (isset($_POST['addpwd'])) { ?>
                                                        <p style="color: red"><?php echo htmlentities($_SESSION['msg']); ?></p>
                                                    <?php } ?>

                                                    <div class="hr-dashed"></div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Employee No</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" name="id"  id="id" value="<?php echo $row->EmployeeId; ?>" disabled class="form-control">
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

                                                    <!--                                                    <div class="form-group">
                                                                                                            <label class="col-sm-2 control-label">Current Password :</label>
                                                                                                            <div class="col-sm-8">
                                                                                                                <input type="password" class="form-control" value="" name="oldpassword" id="oldpassword" onBlur="checkpass()" required="required">
                                                                                                                <span id="password-availability-status" class="help-block m-b-none" style="font-size:12px;"></span> 
                                                                                                            </div>
                                                                                                        </div>-->

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">User Name</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" value="" name="newuser" id="newuser" required="required">
                                                            <span class="help-block m-b-none">[ Username cannot be duplicated ]</span>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Password</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" value="" name="newpassword" id="newpassword" required="required">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Confirm Password</label>
                                                        <div class="col-sm-8">
                                                            <input type="password" class="form-control" value="" name="cpassword" id="cpassword" required="required">
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4 col-sm-offset-4">
                                                        <!--<button class="btn btn-default" type="submit">CANCEL</button>-->
                                                        <input type="submit" name="adduser" Value="S A V E" class="btn btn-primary">
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