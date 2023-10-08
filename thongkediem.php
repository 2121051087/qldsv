<?php
include('includes/config.php');
// sql = query
$query = "
SELECT
    COUNT(CASE WHEN (dh.A + dh.B + dh.C) / 3 >= 8.5 THEN 1 END) AS A,
    COUNT(CASE WHEN (dh.A + dh.B + dh.C) / 3 >= 7.5 AND (dh.A + dh.B + dh.C) / 3 < 8.5 THEN 1 END) AS B,
    COUNT(CASE WHEN (dh.A + dh.B + dh.C) / 3 >= 6.4 AND (dh.A + dh.B + dh.C) / 3 < 7.5 THEN 1 END) AS C,
    COUNT(CASE WHEN (dh.A + dh.B + dh.C) / 3 >= 4 AND (dh.A + dh.B + dh.C) / 3 < 6.4 THEN 1 END) AS DiemD,
    COUNT(CASE WHEN (dh.A + dh.B + dh.C) / 3 < 4 THEN 1 END) AS DiemF
FROM
    tbl_diemhocphan as dh
JOIN
    tbl_sinhvien as sv ON sv.ma_sv = dh.ma_sv";
$result = $dbh->query($query);
$data = $result->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SMS Admin| Thống Kê    </title>
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
                    <h1>Thống kê điểm Phát triển Web </h1>

<div id="piechart"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
    var data = new google.visualization.arrayToDataTable([
                ['Grade', 'Count'],
                ['Điểm A', <?php echo $data['A']; ?>],
                ['Điểm B', <?php echo $data['B']; ?>],
                ['Điểm C', <?php echo $data['C']; ?>],
                ['Điểm D', <?php echo $data['DiemD']; ?>],
                ['Điểm F', <?php echo $data['DiemF']; ?>]
            ]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Điểm học phần', 'width':1200 , 'height':600};

  // Display the chart inside the <div> element with id="pie  m chart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>

                    
                  
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

