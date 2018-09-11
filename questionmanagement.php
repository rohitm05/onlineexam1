<?php
header("Content-type: text/html");
include "con.php";
session_start(); 
if (isset($_SESSION["username"]) || isset($_COOKIE["username"])) {
  include "header-admin.php";?>


      <div id="content-wrapper">

        <div class="container-fluid">
        	<?php if (isset($_SESSION['msg'])) { ?>
            <div class="alert alert-success" role="alert"><?php echo $_SESSION['msg']; unset($_SESSION['msg']);?></div>
        <?php } ?>
        <?php if (isset($_SESSION['err_msg'])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION['err_msg']; unset($_SESSION['err_msg']);?></div>
        <?php } ?>
          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">List Question</li>
          </ol>
		  <?php 
          $query="select id, question,answer1,answer2,answer3,answer4,correct_ans from question1 where category_id='".$_REQUEST['id']."'";
          $result=mysqli_query($con,$query);
           ?>
                <div  style="float: right; padding-bottom: 5px;">
              
              <a class="btn btn-success" href="add-question.php?id=<?php echo $_REQUEST['id']; ?>">
  Add Question
</a>
</div>
            <div class="clearfix"></div>  
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Question Table </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Question Id</th>
                      <th>Question</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Question Id</th>
                      <th>Question</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                     <?php while ($arr=mysqli_fetch_array($result,MYSQLI_BOTH)):
                      ?>

                    <tr>
                      <td><?php echo $arr['id'] ?></td>
                      <!-- <td><?php echo html_entity_decode($arr['question']); ?></td> -->
                      <td><?php echo strip_tags($arr['question']); ?>
                        <div class="container-fluid">
                          <div class="row">
                            <div class="col-sm-6">
                              <span <?php if($arr['correct_ans']=='1') echo 'style="color: green;"' ?> >1)<?php echo $arr['answer1']?></span>
                            </div>
                            <div class="col-sm-6">
                              <span <?php if($arr['correct_ans']=='2') echo 'style="color: green;"' ?> >2)<?php echo $arr['answer2']?></span>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-sm-6">
                              <span <?php if($arr['correct_ans']=='3') echo 'style="color: green;"' ?> >3)<?php echo $arr['answer3']?></span>
                            </div>
                            <div class="col-sm-6">
                              <span <?php if($arr['correct_ans']=='4') echo 'style="color: green;"' ?> >4)<?php echo $arr['answer4']?></span>
                            </div>
                          </div>
                        </div>
                      </td>
                      <td><a href="edit-question.php?id=<?php echo $arr['id']; ?>&&cid=<?php echo $_REQUEST['id']; ?>"><i class="fas fa-edit" style="color: green;"></i></a>&nbsp&nbsp<a href="delete-question.php?id=<?php echo $arr['id']; ?>&&cid=<?php echo $_REQUEST['id']; ?>"><i class="fas fa-trash-alt" style="color: red;"></i></a></td>
                    </tr>
                    <?php endwhile; ?>
                  </tbody>
                </table>
              </div>
            </div>
            
          </div>

          

        </div>
          

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