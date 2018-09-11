<?php
include "con.php";
session_start(); 
if (isset($_SESSION["username"]) || isset($_COOKIE["username"])) {
  include "header-admin.php";?>


      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">View Paper</li>
          </ol>
          <div  style="float: right; padding-bottom: 5px;">
              
              <table>
                <tr><td><span style="color:green">User Right Answer selected</span></td></tr>
                <tr><td><span style="color:red">User Wrong Answer selected</span></td></tr>
                <tr><td><span style="color:green">System Answer</span></td></tr>
              </table>
</div>
<?php
$id = array();
$cat_score=array();
$query="select name,email,mobile,total,result,post,experience,score,tscore from users1 where id='".$_REQUEST['id']."'";
$result=mysqli_query($con,$query);
$arr4=mysqli_fetch_array($result,MYSQLI_BOTH);
$cat_score = json_decode($arr4['score'], true);
$cat_tscore = json_decode($arr4['tscore'], true);

  $query1="select id,time FROM category1 where find_in_set('".$arr4['post']."',post) and find_in_set('".$arr4['experience']."',exper)";
  $result1=mysqli_query($con,$query1);
  while($arr=mysqli_fetch_array($result1,MYSQLI_BOTH)){
  array_push($id, $arr['id']);
}
$i=1;
?>
       <div  style="float: left; padding-bottom: 5px;">
              
              <table >
                <tr><td>Name:</td><td><?php echo $arr4['name']; ?></td></tr>
                <tr><td>Mobile No.:</td><td><?php echo $arr4['mobile']; ?></td></tr>
                <tr><td>Email:</td><td><?php echo $arr4['email']; ?></td></tr>
                <tr><td>Result:</td><td><?php echo $arr4['result']; ?></td></tr>
                <tr><td>Total Score:</td><td><?php echo $arr4['total']; ?></td></tr>
                <?php foreach ($id as $cid) {
                  $query="select category_name from category1 where id='".$cid."'";
                  $result=mysqli_query($con,$query);
                  $arr5=mysqli_fetch_array($result,MYSQLI_BOTH);
                  ?>
                  <tr><td>Paper <?php echo $i; ?>:</td><td style="color: blue;"><?php echo $arr5['category_name']; ?>(<?php echo $cat_score[$cid]; ?>/<?php echo $cat_tscore[$cid]; ?>)</td></tr>
                  <?php
               $i++; }?>
              </table>
</div> 
<div class="clearfix"></div>        
        
        	<?php
        	 $i=1;  
        	 foreach ($id as $cid) {
            $query="select category_name from category1 where id='".$cid."'";
$result=mysqli_query($con,$query);
$arr=mysqli_fetch_array($result,MYSQLI_BOTH);
?>

        	 <table class="table table-striped" border="4">
            <tr><th style="text-align: center; font-size: 20px; color: #d63056;"><?php echo $arr['category_name']; ?><span style="color: black;">&nbsp&nbsp(Score&nbsp<b><?php echo $cat_score[$cid]; ?>/<?php echo $cat_tscore[$cid]; ?></b>)</span></th></tr> 
        	<?php $query2="select question1.id,question1.question,question1.answer1,question1.answer2,question1.answer3,question1.answer4,question1.correct_ans from  question1 where category_id='".$cid."'"; 
        	$result2=mysqli_query($con,$query2);
        	while ($arr2=mysqli_fetch_array($result2,MYSQLI_BOTH)):
            $query3="select answer from user_answer1 where user_id='".$_REQUEST['id']."' and question_id='".$arr2['id']."'";
            $result3=mysqli_query($con,$query3);
            $arr3=mysqli_fetch_array($result3,MYSQLI_BOTH);
        	?>
        	
            <tr><td>
  <p>Q<?php echo $i." "."<b>".$arr2['question']."</b>";?></p>
  <input type="radio"  <?php if($arr3['answer']=='1') echo "checked";?> value="1" disabled><span <?php if($arr3['answer']=='1') {  if($arr3['answer']==$arr2['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr2['correct_ans']=='1'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr2['answer1'] ?></span> <br>
  <input type="radio"  <?php if($arr3['answer']=='2') echo "checked";?> value="2" disabled> <span <?php if($arr3['answer']=='2') {  if($arr3['answer']==$arr2['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr2['correct_ans']=='2'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr2['answer2'] ?></span> <br>
   <input type="radio" <?php if($arr3['answer']=='3') echo "checked";?> value="3" disabled> <span <?php if($arr3['answer']=='3') {  if($arr3['answer']==$arr2['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr2['correct_ans']=='3'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr2['answer3'] ?></span> <br>
  <input type="radio"  <?php if($arr3['answer']=='4') echo "checked";?> value="4" disabled> <span <?php if($arr3['answer']=='4') {  if($arr3['answer']==$arr2['correct_ans']){ echo 'style="color:green;"'; }else{ echo 'style="color:red;"';}} if($arr2['correct_ans']=='4'){ echo 'style="color:green;"'; } ?> ><?php  echo $arr2['answer4'] ?></span> 
 
		</td></tr>
		 <?php
		  $i++;
		endwhile; ?>
        </table>
<?php }  ?>

<a class="btn btn-default" href="usermanagement.php" style="background-color: #4d3a8f; color: white;">Back</a>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    
<?php 
include "footer-admin.php";
}
else
  {
    header("Location: admin-login.php");
  }?>