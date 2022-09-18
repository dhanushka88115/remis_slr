<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

//code for add employee
if (isset($_POST['submit'])) {
    $nicno = $_POST['nicno'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $gender = $_POST['gender'];
    $address = $_POST['address'];
    $datebirth = $_POST['datebirth'];
    $dateret = $_POST['dateret'];
    $dateappoint = $_POST['dateappoint'];
    $dateappointdept = $_POST['dateappointdept'];
    $status = $_POST['status'];
    $salstruct = $_POST['salstruct'];
    $compno = $_POST['compno'];
    $desig = $_POST['desig'];
    $desigtype = $_POST['desigtype'];
    $service = $_POST['service'];
    $servicelev = $_POST['servicelev'];
    $classgrade = $_POST['classgrade'];
    $cabinet = $_POST['cabinet'];
    $subdept = $_POST['subdept'];
    $section = $_POST['section'];

    $userid = $_SESSION['LogEmployeeId'];
    $username = $_SESSION['LogUserName'];

//    date_default_timezone_set("Sri_Lanka/Sri_Jayawardenepura");   //By Prasad
//    $userdate = date('Y-m-d H:i:s');

    if (strlen($nicno) == 10 || strlen($nicno) == 15) {

        $SqlString = "SELECT count(*) FROM employee WHERE NICNumber=? && IsDeleted='0'";
        $stmt = $DbConnect->prepare($SqlString);
        $stmt->bind_param('s', $nicno);
        $stmt->execute();
        $stmt->bind_result($count);
        $stmt->fetch();
        $stmt->close();

        if ($count > 0) {
            echo"<script>alert('NIC Number already exist, Please check');</script>";
        } else {
            $query1 = "insert into employee(NICNumber,FirstName,LastName,GenderId,Address,DateOfBirth,RetirementDate,AppointmentDate,AppointmentDateToSLR,EmployeeStatusId,SalaryStructureId,DesignationId,DesignationTypeId,ServiceCategoryId,ServiceLevelId,ClassGradeId,CabinetOfficeId,SubDepartmentId,SectionId,ComputerNo,CreatedBy,CreatedTime) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP())";
            $stmt = $DbConnect->prepare($query1);
            $rc = $stmt->bind_param('sssisssssiiiiiiiiiiss', $nicno, $fname, $lname, $gender, $address, $datebirth, $dateret, $dateappoint, $dateappointdept, $status, $salstruct, $desig, $desigtype, $service, $servicelev, $classgrade, $cabinet, $subdept, $section, $compno, $username);
            $stmt->execute();
            $stmt->close();
            echo "<script>alert('New Employee Record Succssfully Saved');</script>";
        }
    } else {
        echo"<script>alert('NIC Number not valid, Please check');</script>";
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
        <title>New Employee</title>
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
        <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

        <script>
            function getSeater(val) {
                $.ajax({
                    type: "POST",
                    url: "get_seater.php",
                    data: 'roomid=' + val,
                    success: function (data) {
                        //alert(data);
                        $('#seater').val(data);
                    }
                });

                $.ajax({
                    type: "POST",
                    url: "get_seater.php",
                    data: 'rid=' + val,
                    success: function (data) {
                        //alert(data);
                        $('#fpm').val(data);
                    }
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
                            <h2 class="page-title">New Employee</h2>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">Fill all Information</div>
                                        <div class="panel-body">
                                            <form method="post" action="" class="form-horizontal">

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><h4 style="color: green" align="left">Personal Info </h4> </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">NIC No</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="nicno" id="nicno"  class="form-control" required="required" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">First Name/Initials</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="fname" id="fname"  class="form-control">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Last Name/Surname</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="lname" id="lname"  class="form-control" required="required">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Gender</label>
                                                    <div class="col-sm-8">
                                                        <select name="gender" id="gender" class="form-control">
                                                            <option value="">SELECT</option>
                                                            <option value="1">Male</option>
                                                            <option value="2">Female</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Address</label>
                                                    <div class="col-sm-8">
                                                        <!--<textarea  rows="3" name="address"  id="address" class="form-control" ></textarea>-->
                                                        <input type="text" name="address" id="address"  class="form-control">                                                            
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date of Birth</label>
                                                    <div class="col-sm-8">
                                                        <input type="date" name="datebirth" id="datebirth"  class="form-control" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date of Retirement</label>
                                                    <div class="col-sm-8">
                                                        <input type="date" name="dateret" id="dateret"  class="form-control" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Employee Status</label>
                                                    <div class="col-sm-8">
                                                        <select name="status" id="status" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM EmployeeStatus";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->EmployeeStatusName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><h4 style="color: green" align="left">Designation Info </h4> </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Designation</label>
                                                    <div class="col-sm-8">
                                                        <select name="desig" id="desig" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM Designation";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->DesignationName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date of Appointment</label>
                                                    <div class="col-sm-8">
                                                        <input type="date" name="dateappoint" id="dateappoint"  class="form-control" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Designation Type</label>
                                                    <div class="col-sm-8">
                                                        <select name="desigtype" id="desigtype" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM DesignationType";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->DesignationTypeName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Service</label>
                                                    <div class="col-sm-8">
                                                        <select name="service" id="service" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM ServiceCategory";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->ServiceName; ?>&nbsp;&nbsp;(<?php echo $row->ServiceCode; ?>)</option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Class and Grade</label>
                                                    <div class="col-sm-8">
                                                        <select name="classgrade" id="classgrade" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM classgrade";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->ClassGradeName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Service Level</label>
                                                    <div class="col-sm-8">
                                                        <select name="servicelev" id="servicelev" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM ServiceLevel";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->ServiceLevelName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Salary Structure</label>
                                                    <div class="col-sm-8">
                                                        <select name="salstruct" id="salstruct" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM SalaryStructure";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->SalaryCode; ?>&nbsp;&nbsp;(<?php echo $row->ServiceCategory; ?>)</option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label"><h4 style="color: green" align="left">Departmental Info </h4> </label>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Sub-Department</label>
                                                    <div class="col-sm-8">
                                                        <select name="subdept" id="subdept" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM SubDepartment";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->SubDepartmentName; ?>&nbsp;&nbsp;(<?php echo $row->SubDepartmentCode; ?>)</option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date Appointed to SLR</label>
                                                    <div class="col-sm-8">
                                                        <input type="date" name="dateappointdept" id="dateappointdept"  class="form-control" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Branch or Section</label>
                                                    <div class="col-sm-8">
                                                        <select name="section" id="section" class="form-control" required> 
                                                            <option value="">SELCT</option>
                                                            <?php
                                                            $query = "SELECT * FROM Section";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->SectionName; ?>&nbsp;&nbsp;(<?php echo $row->SectionCode; ?>)</option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                                                                              

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Cabinet Office Name</label>
                                                    <div class="col-sm-8">
                                                        <select name="cabinet" id="cabinet" class="form-control" required> 
                                                            <option value="">SELECT</option>
                                                            <?php
                                                            $query = "SELECT * FROM CabinetOffice";
                                                            $stmt2 = $DbConnect->prepare($query);
                                                            $stmt2->execute();
                                                            $res = $stmt2->get_result();
                                                            while ($row = $res->fetch_object()) {
                                                                ?>
                                                                <option value="<?php echo $row->Id; ?>"><?php echo $row->CabinetOfficeName; ?></option>
                                                            <?php } ?>
                                                        </select> 
                                                    </div>
                                                </div>                                               

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Payroll No</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="compno" id="compno"  class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-sm-6 col-sm-offset-4">
                                                    <!--<button class="btn btn-default" name="cancel" type="submit">CANCEL</button>-->
                                                    <button class="btn btn-default" type="reset">R E S E T</button>&nbsp;&nbsp;
                                                    <input class="btn btn-primary" type="submit" name="submit" value="S A V E">
                                                </div>

                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

<script type="text/javascript">
            $(document).ready(function () {
                $('input[type="checkbox"]').click(function () {
                    if ($(this).prop("checked") == true) {
                        $('#paddress').val($('#address').val());
                        $('#pcity').val($('#city').val());
                        $('#pstate').val($('#state').val());
                        $('#ppincode').val($('#pincode').val());
                    }
                });
            });
</script>

<script>
    function checkAvailability() {
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'roomno=' + $("#room").val(),
            type: "POST",
            success: function (data) {
                $("#room-availability-status").html(data);
                $("#loaderIcon").hide();
            },
            error: function () {}
        });
    }
</script>

<script>
    function checkAvailability() {
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'emailid=' + $("#email").val(),
            type: "POST",
            success: function (data) {
                $("#user-availability-status").html(data);
                $("#loaderIcon").hide();
            },
            error: function ()
            {
                event.preventDefault();
                alert('error');
            }
        });
    }
</script>

<script>
    function checkRegnoAvailability() {
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'regno=' + $("#regno").val(),
            type: "POST",
            success: function (data) {
                $("#user-reg-availability").html(data);
                $("#loaderIcon").hide();
            },
            error: function ()
            {
                event.preventDefault();
                alert('error');
            }
        });
    }
</script>

</html>