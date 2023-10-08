<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{

$stid=intval($_GET['stid']);

if(isset($_POST['submit']))
{
    if(isset($_POST['ten_lop'], $_POST['ma_lop'], $_POST['si_so'], $_POST['nien_khoa'], $_POST['ma_khoa'])){
        $ten_lop=$_POST['ten_lop'];
$ma_lop=$_POST['ma_lop']; 
$si_so=$_POST['si_so']; 
$nien_khoa=$_POST['nien_khoa']; 
$ma_khoa=$_POST['ma_khoa'];
    }

$sql = "update tbl_lopchuyennganh set ten_lop=:ten_lop,ma_lop=:ma_lop,si_so=:si_so,nien_khoa=:nien_khoa,ma_khoa=:ma_khoa where ma_lop=:stid ";

$query = $dbh->prepare($sql);
$query->bindParam(':ten_lop',$ten_lop,PDO::PARAM_STR);
$query->bindParam(':ma_lop',$ma_lop,PDO::PARAM_STR);
$query->bindParam(':si_so',$si_so,PDO::PARAM_STR);
$query->bindParam(':nien_khoa',$nien_khoa,PDO::PARAM_STR);
$query->bindParam(':ma_khoa',$ma_khoa,PDO::PARAM_STR);
$query->bindParam(':stid',$stid,PDO::PARAM_STR);

$query->execute();

$msg="Student info updated successfully";
}


?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SMS Admin| Chỉnh Sửa   </title>
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
                                    <h2 class="title">Cập Nhật </h2>
                                
                                </div>
                                <!-- /.col-md-6 text-right -->
                            </div>
                            <!-- /.row -->
                            <div class="row breadcrumb-div">
                                <div class="col-md-6">
                                    <ul class="breadcrumb">
                                        <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                        <li><a href="manage-classes.php">Quản lí thông tin</a></li>
                                        <li><class="active">Cập nhật</li>
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
                                                    <h5>Điền thông tin  muốn sửa</h5>
                                                    
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                            <?php
try {
    if ($msg) {
        ?>
        <div class="alert alert-success left-icon-alert" role="alert">
            <strong>Well done!</strong><?php echo htmlentities($msg); ?>
        </div>
        <?php
    } else if ($error) {
        ?>
        <div class="alert alert-danger left-icon-alert" role="alert">
            <strong>Oh snap!</strong> <?php echo htmlentities($error); ?>
        </div>
        <?php
    }
} catch (Exception $e) {
    // Xử lý các ngoại lệ tại đây
    // Ví dụ: hiển thị thông báo lỗi hoặc thực hiện các hành động cần thiết
}
?>

<form class="form-horizontal" method="post">
             
<?php 

$sql = "SELECT lcn.ten_lop,lcn.nien_khoa,lcn.si_so,lcn.ma_lop,kh.ma_khoa,kh.ten_khoa,kh.dien_thoai
from tbl_lopchuyennganh AS lcn join tbl_khoa AS kh  on lcn.ma_khoa=kh.ma_khoa where lcn.ma_lop=:stid";
$query = $dbh->prepare($sql);
$query->bindParam(':stid',$stid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=$cnt+1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Mã Lớp</label>
<div class="col-sm-10">
<input type="text" name="ma_lop" class="form-control" id="ma_lop" value="<?php echo htmlentities($result->ma_lop)?>" maxlength="15" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Tên Lớp </label>
<div class="col-sm-10">
<input type="text" name="ten_lop" class="form-control" id="ten_lop" value="<?php echo htmlentities($result->ten_lop)?>" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Sĩ số</label>
<div class="col-sm-10">
<input type="text" name="si_so" class="form-control" id="si_so" value="<?php echo htmlentities($result->si_so)?>" required="required" autocomplete="off">
</div>
</div>

<div class="form-group">
<label for="default" class="col-sm-2 control-label">Niên Khóa</label>
<div class="col-sm-10">
<input type="text" name="nien_khoa" class="form-control" id="nien_khoa" value="<?php echo htmlentities($result->nien_khoa)?>" maxlength="10" required="required" autocomplete="off">
</div>
</div>



<div class="form-group">
<label for="default" class="col-sm-2 control-label">Mã Khoa</label>
<div class="col-sm-10">



<select name="ma_khoa" class="form-control" id="ma_khoa" required="required" >
<option value=""><?php echo htmlentities($result->ma_khoa)?></option>
<?php $sql = "SELECT * from tbl_khoa";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>
<option value="<?php echo htmlentities($result->ma_khoa); ?>"><?php echo htmlentities($result->ma_khoa);?>&nbsp; <?php echo htmlentities($result->ten_khoa)?>&nbsp;</option>
<?php }} ?>
 </select>
            

</div>
</div>




</div>
</div>

<?php }} ?>                                                    

                                                    
                                                    <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                            <button type="submit" name="submit" class="btn btn-primary">Cập Nhật</button>
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
            $(function(){

            });
      
        </script>
    </body>
</html>
<?PHP } ?>