<?php
$un = $_SESSION['LogUserName'];
?>
<div class="brand clearfix">
    <a href="dashboard.php" class="label" style="font-size: large; color: yellowgreen; font-weight: normal"><img src="img/slr.gif" class="ts-avatar hidden-side" width="60" height="60" alt="R E M I S">Railway Employee Master Information System&nbsp;&nbsp;[ USER:&nbsp;<?php echo strtoupper($un) ?>&nbsp;]</a>   
    <span class="menu-btn"><i class="fa fa-bars"></i></span>

    <ul class="ts-profile-nav">
        <li class="ts-account">
            <a href=""><img src="img/avatar.png" class="ts-avatar hidden-side" alt="">&nbsp;OPTIONS&nbsp;<i class="fa fa-angle-down hidden-side"></i></a>
            <ul>
                <li><a href="edit-password.php">CHANGE PASSWORD</a></li>
                <li><a href="logout.php">LOGOUT</a></li>
            </ul>
        </li>
    </ul>

    <ul class="ts-profile-nav">
        <li class="ts-account">
            <ul>
            </ul>
    </ul>


</div>