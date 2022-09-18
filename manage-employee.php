<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $username = $_SESSION['LogUserName'];
//    $query = "delete from employee where id=?";
    $query = "update employee set IsDeleted='1', DeletedBy=?, DeletedTime=CURRENT_TIMESTAMP() where id=?";
    $stmt = $DbConnect->prepare($query);
    $stmt->bind_param('si', $username, $id);
    $stmt->execute();
    $stmt->close();
    echo "<script>alert('Employee Record Deleted Successfully!');</script>";
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
        <title>Employee Master Information</title>
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
                            <h3 class="page-title" style="margin-top:4%;">Employee Master Information</h3>
                            <h5 style=" font-weight: bold; color: blue; font-size: medium">Add New&nbsp;<a href="add-employee.php"><img title ="New Employee" src= "img/add.png" width="30"></a></h5>
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
                                                <th style="color: blue;">&nbsp;&nbsp;&nbsp;&nbsp;Action&nbsp;&nbsp;&nbsp;&nbsp;</th>
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
                                                <th style="color: blue;">&nbsp;&nbsp;&nbsp;&nbsp;Action&nbsp;&nbsp;&nbsp;&nbsp;</th>										
                                            </tr>
                                        </tfoot>
                                        <tbody>

                                            <?php
                                            $un = $_SESSION['LogUserName'];
                                            $ret = "select * from employeesearchview where CreatedBy=? ";
//                                            $ret = "select * from employeesearchview";
                                            $stmt = $DbConnect->prepare($ret);
                                            $stmt->bind_param('s', $un);
                                            $stmt->execute(); //ok
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
    <!--                                                        <a href="edit-employee.php?id=<?php echo $row->id; ?>"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <a href="manage-courses.php?del=<?php echo $row->id; ?>" title="Delete Record" onclick="return confirm('Do you want to delete?');"><i class="fa fa-close"></i></a>-->

                                                        <a href="employee-details.php?id=<?php echo $row->Id; ?>"><img title ="View Employee" src= "img/view.png" width="29"></a>
                                                        <a href="edit-employee.php?id=<?php echo $row->Id; ?>"><img title ="Edit Employee" src= "img/edit.png" width="29"></a>
                                                        <a href="manage-employee.php?id=<?php echo $row->Id; ?>"><img title ="Delete Employee" onclick="return confirm('Do you want to delete the record, Are you sure?');" src= "img/delete.png" width="29"></a>

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