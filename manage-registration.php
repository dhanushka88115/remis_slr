<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
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
        <title>Employee List</title>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/fileinput.min.css">
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <?php include('includes/header.php'); ?>
        <div class="ts-main-content">
            <?php include('includes/sidebar.php'); ?>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="page-title" style="margin-top:4%;">Employee List</h3>
                            <div class="panel panel-default">
                                <!--<div class="panel-heading">All Courses Details</div>-->
                                <div class="panel-body">
                                    <table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>ID</th>
                                                <th>NIC Number</th>
                                                <th>First Name/Initials</th>
                                                <th>Last Name/Surname</th>
                                                <th>Gender</th>
                                                <th>Designation</th>
                                                <th style="color: blue;">&nbsp;&nbsp;&nbsp;Action&nbsp;&nbsp;&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>#</th>
                                                <th>ID</th>
                                                <th>NIC Number</th>
                                                <th>First Name/Initials</th>
                                                <th>Last Name/Surname</th>
                                                <th>Gender</th>
                                                <th>Designation</th>
                                                <th style="color: blue;">&nbsp;&nbsp;&nbsp;Action&nbsp;&nbsp;&nbsp;</th>										
                                            </tr>
                                        </tfoot>
                                        <tbody>

                                            <?php
                                            $sql = "select * from employeesearchview";
                                            $stmt = $DbConnect->prepare($sql);
                                            $stmt->execute(); 
                                            $res = $stmt->get_result();
                                            $cnt = 1;
                                            while ($row = $res->fetch_object()) {
                                                ?>
                                                <tr>
                                                    <td><?php echo $cnt; ?></td>
                                                    <td><?php echo $row->Id; ?></td>
                                                    <td><?php echo $row->NICNumber; ?></td>
                                                    <td><?php echo $row->FirstName; ?></td>
                                                    <td><?php echo $row->LastName; ?></td>
                                                    <td><?php echo $row->GenderName; ?></td>
                                                    <td><?php echo $row->DesignationName; ?></td>
                                                    <td>
                                                        <a href="add-registration.php?id=<?php echo $row->Id; ?>"><img title ="Add Registration" src= "img/add.png" width="30"></a>
                                                    </td>
                                                </tr>
                                                <?php
                                                $cnt = $cnt + 1;
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Loading Scripts -->
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