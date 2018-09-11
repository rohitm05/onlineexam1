<?php
include "con.php";
session_start(); 
if (isset($_SESSION["username"]) || isset($_COOKIE["username"])) {
   include "header-admin.php";?>


      <div id="content-wrapper">
<ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Add Question</li>
          </ol>
        <div class="container">

          <!-- Breadcrumbs-->
          
 <h2 style="text-align: center">ADD QUESTION</h2>
          <!-- Icon Cards-->
           <!--<div class="row">
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-comments"></i>
                  </div>
                  <div class="mr-5">26 New Messages!</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="#">
                  <span class="float-left">View Details</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                </a>
              </div>
            </div>
          </div> -->
         
   <form class="form-horizontal" action="add-question-backend.php" method="post">
   	 <div class="form-group">
      <label class="control-label col-sm-2" for="time">Category:</label>
      <div class="col-sm-10"> 
      	<?php $query="select id, category_name from category1";
      	$result=mysqli_query($con,$query); 
      	?>
      <select class="form-control" id="category_id" name="category_id">
        <option style="display:none;">Select</option>
      	 <?php while ($arr=mysqli_fetch_array($result,MYSQLI_BOTH)):
         ?>
        <option <?php if($arr['id']==$_REQUEST['id']) echo "selected"; ?> value="<?php echo $arr['id'] ?>"><?php echo $arr['category_name'] ?></option>
        <?php endwhile; ?>
      </select>
  </div>
  </div>
  <div class="form-group">
    <label class=" col-sm-2" for="ques">Question:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="question" name="question" placeholder="Question">
      <!-- <textarea name="question" id="question" rows="10" cols="80"></textarea> -->
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="answer">Options1:</label>
    <div class="col-sm-10"> 
      <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" style="padding-top: 10px;" value="1" name="correct">
      </span>
      <input type="text" class="form-control" placeholder="Answer" name="answer1">
    </div>
    </div>
  </div>
 <div class="form-group">
    <label class="control-label col-sm-2" for="answer">Options2:</label>
    <div class="col-sm-10"> 
      <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" style="padding-top: 10px;" value="2" name="correct">
      </span>
      <input type="text" class="form-control" placeholder="Answer" name="answer2">
    </div>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="answer">Options3:</label>
    <div class="col-sm-10"> 
      <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" style="padding-top: 10px;" value="3" name="correct">
      </span>
      <input type="text" class="form-control" placeholder="Answer" name="answer3">
    </div>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="answer">Options4:</label>
    <div class="col-sm-10"> 
      <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" style="padding-top: 10px;" value="4" name="correct">
      </span>
      <input type="text" class="form-control" placeholder="Answer" name="answer4">
    </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <input  type="submit" class="btn btn-success"  name="add-btn"value="Submit">
      <a class="btn btn-danger" href="questionmanagement.php?id=<?php echo $_REQUEST['id']; ?>">Cancel</a>
    </div>
  </div>
</form>
          

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
   <!--  <script>
      CKEDITOR.replace( 'question' );
    </script> --> 
<?php 
 include "footer-admin.php";
 }
else
  {
    header("Location: admin-login.php");
  }?>