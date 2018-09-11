<?php
include "con.php";
session_start(); 
if (isset($_SESSION["email"]) ) {
$time=0;

$id = array();
  $query="select id,category_name,time FROM category1 where find_in_set('".$_SESSION['post']."',post) and find_in_set('".$_SESSION['exper']."',exper)";
  $result=mysqli_query($con,$query);
  
  /*$post=explode(",",$arr['post']);*/
  //$expr=explode(",",$arr['exper']);
  
  //   if(in_array($_SESSION['post'], $post))
  //   {
  // $query1="select id,time from category1 where exper in ('".$_SESSION['exper']."') and id='".$arr['id']."'";
  
  // $result1=mysqli_query($con,$query);
  // while($arr1=mysqli_fetch_array($result1,MYSQLI_BOTH)){
  //   print_r($arr1);
  //   echo "<br>";
 // $time=$time+floatval($arr['time']);
  //array_push($id, $arr['id']);
 /* }
 }*/


	?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://www.letsnurture.com.au/wp-content/themes/letsnutrure/img/favicon/favicon-16x16.png" rel="shortcut icon" type="image/x-icon" />
    <title>Welcome to Our Recruitment Program</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
<style type="text/css">
	#demo {
  text-align: center;
  font-size: 25px;
  margin-top:0px;

}

    .footer {
   position: absolute;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #4d3a8f;
   color: white;
  
}

</style>

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-light static-top" style="padding-bottom: 0; padding-top: 0;">

      <a class="navbar-brand mr-1" href=""><img src="ln-logo1.svg" width="150" height="60" style="background-color: transparent; padding-bottom: 0px;"></a>

     
      <!-- Navbar Search -->
      <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        
      </div>

      <!-- Navbar -->
      <span style="color: #343a40;"><b>Hello, <?php echo $_SESSION["email"]; ?></b></span>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
     

      <div id="content-wrapper">

        <div class="container">

          <!-- Breadcrumbs-->
          
<!--<h3 align="center">All The Best for Exam</h3>
<div align="center">
<a class="btn btn-success" href="index.php" style="align-content: center;">Begin Test</a>
</div> -->
<div class="row">
	<div class="col-sm-4">
		<h5><b>Welcome to Lets Nurture Online Test!Process of Interview will be as below.</b></h5>
		<p ><ol style="padding-left: 20px;">
			<li>Apptitude Time</li>
			<li>Group Discussion</li>
			<li>Practical Test</li>
			<li>Final Selection</li>
		</ol></p>
		<h5><b>Instruction for Test</b></h5>
		<p ><ul style="padding-left: 20px;">
			<li>No Negative Marking</li>
			<li>All Question Must</li>
		</ul></p>
	</div>
	<div class="col-sm-4">
		 <h5 style="margin-left: 15px;"><b>Paper Categories</b></h5>
		 <br>
		 
          <div style="padding-left: 20px;" >
          <table >
<?php while($arr=mysqli_fetch_array($result,MYSQLI_BOTH)){?>
<tr><td><?php echo $arr['category_name']?></td><td style="padding-left: 6px;"><?php if($arr['time']=="0.5") echo "30 minutes"; elseif($arr['time']=="0.25") echo "15 minutes"; elseif($arr['time']=="0.30") echo "18 minutes"; elseif($arr['time']=="0.75") echo "45 minutes"; else echo $arr['time']." hour" ?></td></tr>
<?php } ?>
</table>
</div>

	</div>
	<div class="col-sm-4" style="border-left: 1px; border-color: black;">
		<h5><b>Best of Luck!We look forward to find the best in you!</b></h5>
	<br>
	<br>
	<div align="center">
<a class="btn btn-success" href="index.php" style="align-content: center;">Begin Test</a>
</div>
</div>
</div>
        <!-- /.container-fluid -->
<div class="footer">
  <div class="container" align="center">
 <span>&copy;2018 All rights reserved Let's Nurture.
                </span></div>
</div>
        <!-- Sticky Footer -->
        

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    
    

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <!-- <script src="js/demo/chart-area-demo.js"></script> -->

    <!-- Custome JS-->
    <script> 
</script>

  </body>

</html>
<?php }
else
  {
    header("Location: user-register.php");
  }?>