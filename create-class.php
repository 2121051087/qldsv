<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{
if(isset($_POST['submit']))
{
$ten_lop=$_POST['ten-lop'];
$ma_lop=$_POST['ma_lop']; 
$nien_khoa=$_POST['nien_khoa']; 
$si_so=$_POST['si_so']; 
$ma_khoa=$_POST['ma_khoa']; 
$status=1;
$disableForeignKeyCheck = "SET FOREIGN_KEY_CHECKS=0;";
$dbh->exec($disableForeignKeyCheck);
$sql="INSERT INTO  tbl_lopchuyennganh(ten_lop,ma_lop,nien_khoa,si_so,ma_khoa) VALUES(:ten_lop,:ma_lop,:nien_khoa,:si_so,:ma_khoa)";
$query = $dbh->prepare($sql);
$query->bindParam(':ten_lop',$ten_lop,PDO::PARAM_STR);
$query->bindParam(':ma_lop',$ma_lop,PDO::PARAM_STR);
$query->bindParam(':nien_khoa',$nien_khoa,PDO::PARAM_STR);
$query->bindParam(':si_so',$si_so,PDO::PARAM_STR);
$query->bindParam(':ma_khoa',$ma_khoa,PDO::PARAM_STR);
$query->execute();
$enableForeignKeyCheck = "SET FOREIGN_KEY_CHECKS=1;";
$dbh->exec($enableForeignKeyCheck);
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Student info added successfully";
}
else 
{
$error="class info added successfully";
}

}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SMS Admin| Thêm lớp  </title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" >
        <link rel="stylesheet" href="css/select2/select2.min.css" >
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="top-navbar-fixed">
        <div class="main-wrapper">

            <!-- ========== TOP NAVBAR ========== -->
  <?php include('includes/topbar.php');?> 
            <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
            <div class="content-wrapper">
                <div class="content-container">

                    <!-- ========== LEFT SIDEBAR ========== -->
                   <?php include('includes/leftbar.php');?>  
                    <!-- /.left-sidebar -->

                    <div class="main-page">

                     <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-md-6">
                                    <h2 class="title">Thêm lớp Chuyên ngành </h2>
                                
                                </div>
                                
                                <!-- /.col-md-6 text-right -->
                            </div>
                            <!-- /.row -->
                            <div class="row breadcrumb-div">
                                <div class="col-md-6">
                                    <ul class="breadcrumb">
                                        <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                
                                        <li class="active">Thêm chuyên ngành </li>
                                    </ul>
                                </div>
                             
                            </div>
                            <!-- /.row -->
                        </div>
                        <div class="container-fluid">
                           
                        <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Thông tin lớp chuyên ngành </h5>
                                                </div>
                                            </div>
                                            <div class="panel-body">
<?php if($msg){?>
<div class="alert alert-success left-icon-alert" role="alert">
 <strong>Well done!</strong><?php echo htmlentities($msg); ?>
 </div><?php } 
else if($error){?>
    <div class="alert alert-success left-icon-alert" role="alert">
                                            <strong>Well done!</strong> <?php echo htmlentities($error); ?>
                                        </div>
                                        <?php } ?>
                                                <form class="form-horizontal" method="post">

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Tên lớp</label>
<div class="col-sm-10">
<input type="text" name="ten-lop" class="form-control" id="ten_lop" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Sĩ số</label>
<div class="col-sm-10">
<input type="text" name="si_so" class="form-control" id="si_so" maxlength="5" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Niên khóa</label>
<div class="col-sm-10">
<input type="text" name="nien_khoa" class="form-control" id="nien_khoa" required="required" autocomplete="off">
</div>
</div>
<div class="form-group">
<label for="default" class="col-sm-2 control-label">Mã Lớp</label>
<div class="col-sm-10">
<input type="text" name="ma_lop" class="form-control" id="ma_lop" required="required" autocomplete="off">
</div>
</div>

            
<div class="form-group">
                                                        <label for="default" class="col-sm-2 control-label">Mã Khoa</label>
                                                        <div class="col-sm-10">
                                                            <input type="text"  name="ma_khoa" class="form-control" id="ma_khoa">
                                                        </div>
                                                    </div>
                                                    

                                                    
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-10">
                                                            <button type="submit" name="submit" class="btn btn-primary">Add</button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-12 -->
                                </div>
                    </div>
                </div>
                <!-- /.content-container -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- /.main-wrapper -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>
        <script src="js/prism/prism.js"></script>
        <script src="js/select2/select2.min.js"></script>
        <script src="js/main.js"></script>
        <script>
            $(function($) {
                $(".js-states").select2();
                $(".js-states-limit").select2({
                    maximumSelectionLength: 2
                });
                $(".js-states-hide").select2({
                    minimumResultsForSearch: Infinity
                });
            });
        </script>
    </body>
</html>
<?PHP } ?>
