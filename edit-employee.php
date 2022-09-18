<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

//code for edit employee
if (isset($_POST['submit'])) {
    $id = $_GET['id'];
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

//    $userdate = date('Y-m-d h:m:s');

    if (strlen($nicno) == 10 || strlen($nicno) == 15) {

        $SqlString = "SELECT count(*) FROM employee WHERE NICNumber=? && IsDeleted='0' && id<>?";
        $stmt = $DbConnect->prepare($SqlString);
        $stmt->bind_param('si', $nicno, $id);
        $stmt->execute();
        $stmt->bind_result($count);
        $stmt->fetch();
        $stmt->close();

        if ($count > 0) {
            $_SESSION['msg'] = "NIC Number already exist, Please check";
        } else {
            $SqlString = "update employee set NICNumber=?,FirstName=?,LastName=?,GenderId=?,Address=?,DateOfBirth=?,RetirementDate=?,AppointmentDate=?,AppointmentDateToSLR=?,EmployeeStatusId=?,SalaryStructureId=?,DesignationId=?,DesignationTypeId=?,ServiceCategoryId=?,ServiceLevelId=?,ClassGradeId=?,CabinetOfficeId=?,SubDepartmentId=?,SectionId=?,ComputerNo=?,UpdatedBy=?,UpdatedTime=CURRENT_TIMESTAMP() where id=?";

            $stmt = $DbConnect->prepare($SqlString);
            $rc = $stmt->bind_param('sssisssssiiiiiiiiiissi', $nicno, $fname, $lname, $gender, $address, $datebirth, $dateret, $dateappoint, $dateappointdept, $status, $salstruct, $desig, $desigtype, $service, $servicelev, $classgrade, $cabinet, $subdept, $section, $compno, $username, $id);

            $stmt->execute();
            $stmt->close();
            $_SESSION['msg'] = "";
            echo"<script>alert('Employee has been Updated successfully!');</script>";
        }
    } else {
        $_SESSION['msg'] = "NIC Number not valid, Please check";
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
        <title>Edit Employee</title>
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
    </head>
    <body>
        <?php include('includes/header.php'); ?>
        <div class="ts-main-content">
            <?php include('includes/sidebar.php'); ?>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="page-title">Edit Employee</h2>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">Edit Employee</div>
                                        <div class="panel-body">
                                            <form method="post" class="form-horizontal">

                                                <?php if (isset($_POST['submit'])) { ?>
                                                    <p style="color: red"><?php echo htmlentities($_SESSION['msg']); ?><?php echo htmlentities($_SESSION['msg'] = ""); ?></p>
                                                <?php } ?>

                                                <?php
                                                $id = $_GET['id'];
                                                $ret = "select * from employeesearchview where id=?";
                                                $stmt = $DbConnect->prepare($ret);
                                                $stmt->bind_param('i', $id);
                                                $stmt->execute(); //ok
                                                $res = $stmt->get_result();
//                                                $cnt = 1;
                                                while ($rrow = $res->fetch_object()) {
                                                    ?>

                                                    <div class="form-group">
                                                        <label class="col-sm-4 control-label"><h4 style="color: green; font-weight: normal;" align="left">Personal Info </h4> </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal">Employee No</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" name="id"  id="id"  class="form-control" value="<?php echo $rrow->Id; ?>" disabled>
                                                            <span class="help-block m-b-none">
                                                                [ Employee number cannot be changed ]</span>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">NIC No</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" name="nicno" id="nicno"  class="form-control" value="<?php echo $rrow->NICNumber; ?>" required="required" >
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">First Name</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" name="fname" id="fname"  class="form-control" value="<?php echo $rrow->FirstName; ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Last Name</label>
                                                        <div class="col-sm-8">
                                                            <input type="text" name="lname" id="lname"  class="form-control" value="<?php echo $rrow->LastName; ?>"required="required">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Gender</label>
                                                        <div class="col-sm-8">
                                                            <select name="gender" id="gender" class="form-control" required>                                                             
                                                                <option value="<?php echo $rrow->GenderId; ?>"><?php echo $rrow->GenderName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
                                                                <option value="1">Male</option>
                                                                <option value="2">Female</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Address</label>
                                                        <div class="col-sm-8">
                                                            <!--<textarea  rows="3" name="address"  id="address" class="form-control" value="<?php echo $rrow->FirstName; ?>"></textarea>-->
                                                            <input type="text" name="address" id="address"  class="form-control" value="<?php echo $rrow->Address; ?>">                                                            
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date of Birth</label>
                                                        <div class="col-sm-8">
                                                            <input type="date" name="datebirth" id="datebirth"  class="form-control" value="<?php echo $rrow->DateOfBirth; ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Date of Retirement</label>  
                                                        <div class="col-sm-8">
                                                            <input type="date" name="dateret" id="dateret"  class="form-control" value="<?php echo $rrow->RetirementDate; ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Employee Status</label>
                                                        <div class="col-sm-8">
                                                            <select name="status" id="status" class="form-control" required> 
                                                                <option value="<?php echo $rrow->EmployeeStatusId; ?>"><?php echo $rrow->EmployeeStatusName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
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
                                                        <label class="col-sm-4 control-label"><h4 style="color: green; font-weight: normal;" align="left">Designation Info </h4> </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Designation</label>
                                                        <div class="col-sm-8">
                                                            <select name="desig" id="desig" class="form-control" required> 
                                                                <option value="<?php echo $rrow->DesignationId; ?>"><?php echo $rrow->DesignationName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
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
                                                            <input type="date" name="dateappoint" id="dateappoint"  class="form-control" value="<?php echo $rrow->AppointmentDate; ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Designation Type</label>
                                                        <div class="col-sm-8">
                                                            <select name="desigtype" id="desigtype" class="form-control" required> 
                                                                <option value="<?php echo $rrow->DesignationTypeId; ?>"><?php echo $rrow->DesignationTypeName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
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
                                                                <option value="<?php echo $rrow->ServiceCategoryId; ?>"><?php echo $rrow->ServiceName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
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
                                                                <option value="<?php echo $rrow->ClassGradeId; ?>"><?php echo $rrow->ClassGradeName; ?></option> 
                                                                <!--<option value="">SELECT</option>-->
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
                                                                <option value="<?php echo $rrow->ServiceLevelId; ?>"><?php echo $rrow->ServiceLevelName; ?></option> 
                                                                <!--<option value="">SELECT</option>-->
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
                                                                <option value="<?php echo $rrow->SalaryStructureId; ?>"><?php echo $rrow->SalaryCode; ?></option> 
                                                                <!--<option value="">SELECT</option>-->
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
                                                        <label class="col-sm-4 control-label"><h4 style="color: green" align="left">Departmental Info</h4> </label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Sub-Department</label>
                                                        <div class="col-sm-8">
                                                            <select name="subdept" id="subdept" class="form-control" required> 
                                                                <option value="<?php echo $rrow->SubDepartmentId; ?>"><?php echo $rrow->SubDepartmentName; ?></option>
                                                                <!--<option value="">SELECT</option>-->
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
                                                            <input type="date" name="dateappointdept" id="dateappointdept"  class="form-control" value="<?php echo $rrow->AppointmentDateToSLR; ?>">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" style="color: blue; font-weight: normal;">Branch or Section</label>
                                                        <div class="col-sm-8">
                                                            <select name="section" id="section" class="form-control" required> 
                                                                <option value="<?php echo $rrow->SectionId; ?>"><?php echo $rrow->SectionName; ?></option> 
                                                                <!--<option value="">SELECT</option>-->
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
                                                                <option value="<?php echo $rrow->CabinetOfficeId; ?></option> "><?php echo $rrow->CabinetOfficeName; ?></option> 
                                                                <!--<option value="">SELECT</option>-->
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
                                                            <input type="text" name="compno" id="compno"  class="form-control" value="<?php echo $rrow->ComputerNo; ?>">
                                                        </div>
                                                    </div>

                                                <?php } ?>
                                                <div class="col-sm-6 col-sm-offset-4">
                                                    <input class="btn btn-primary" type="submit" name="submit" value="U P D A T E">
                                                </div>
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

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-select.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>
<script src="js/Chart.min.js"></script>
<script src="js/fileinput.js"></script>
<script src="js/chartData.js"></script>
<script src="js/main.js"></script>

</script>
</body>

</html>