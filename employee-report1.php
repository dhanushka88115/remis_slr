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
        <title>Employee Details</title>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link rel="stylesheet" href="css/bootstrap-select.css">
        <link rel="stylesheet" href="css/fileinput.min.css">
        <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <script language="javascript" type="text/javascript">

            var popUpWin = 0;
            function popUpWindow(URLStr, left, top, width, height)
            {
                if (popUpWin)
                {
                    if (!popUpWin.closed)
                        popUpWin.close();
                }
                popUpWin = open(URLStr, 'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width=' + 510 + ',height=' + 430 + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
            }

            $(function () {
                $("[data-toggle=tooltip]").tooltip();
            });
            function CallPrint(strid) {
                var prtContent = document.getElementById("print");
                var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
                WinPrint.document.write(prtContent.innerHTML);
                WinPrint.document.close();
                WinPrint.focus();
                WinPrint.print();
                WinPrint.close();
            }
        </script>

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>

    </head>

    <body>
        <?php include('includes/header.php'); ?>

        <div class="ts-main-content">
            <?php include('includes/sidebar.php'); ?>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row" id="print">
                        <div class="col-md-12">
                            <h2 class="page-title" style="margin-top:4%">Employee Details</h2>
                            <div class="panel panel-primary">
                                <!--<div class="panel-heading">All Employee Details</div>-->
                                <div class="panel-body">
                                    <table id="zctb" class="table table-bordered " cellspacing="0" width="100%" border="1">
                                        <span style="float:left" ><i class="fa fa-print fa-2x" aria-hidden="true" OnClick="CallPrint(this.value)" style="cursor: pointer" title="Print Report"></i></span>			
                                        <tbody>

                                            <tr>
                                                <th style="text-align:left; color:green">Personal Info</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align:left; color: blue; font-weight: normal;">Employee Number</th>
                                                <th style="text-align:left; color: blue; font-weight: normal;">NIC Number</th>
                                                <th style="text-align:left; color: blue; font-weight: normal;">First Name/Initials</th>
                                                <th style="text-align:left; color: blue; font-weight: normal;">Last Name/Surname</th>
                                                <th style="text-align:left; color: blue; font-weight: normal;">Gender</th>
                                            </tr>

                                            <?php
                                            $ret = "select * from employeesearchview";
                                            $stmt = $DbConnect->prepare($ret);
                                            $stmt->execute();
                                            $res = $stmt->get_result();
                                            $cnt = 1;

                                            while ($row = $res->fetch_object()) {
                                                ?>
                                                <tr>
                                                    <td><?php echo $row->Id; ?></td>
                                                    <td><?php echo $row->NICNumber; ?></td>
                                                    <td><?php echo $row->FirstName; ?></td>
                                                    <td><?php echo $row->LastName; ?></td>
                                                    <td><?php echo $row->GenderName; ?></td>

        <!--                                                    <td colspan="3"><?php echo $row->Id; ?></td>
                                                            <td colspan="3"><?php echo $row->NICNumber; ?></td>
                                                            <td colspan="3"><?php echo $row->FirstName; ?></td>
                                                            <td colspan="3"><?php echo $row->LastName; ?></td>
                                                            <td colspan="3"><?php echo $row->GenderName; ?></td>-->
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
