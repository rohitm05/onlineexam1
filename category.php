<?php
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
            <li class="breadcrumb-item active">List category</li>
          </ol>
          <?php 
          $query="select id, category_name,category_des,time from category1";
          $result=mysqli_query($con,$query);
           ?>
          <div  style="float: right; padding-bottom: 5px;">
              
              <a class="btn btn-success" href="add-category.php">
  Add Category
</a>
            </div>
            <div class="clearfix"></div>  
<!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Category Table </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Category Id</th>
                      <th>Category Name</th>
                      <th>Category Description</th>
                      <th>Duration</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Category Id</th>
                      <th>Category Name</th>
                      <th>Category Description</th>
                      <th>Duration</th>
                      <th>Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <?php while ($arr=mysqli_fetch_array($result,MYSQLI_BOTH)):
                      ?>

                    <tr>
                      <td><?php echo $arr['id'] ?></td>
                      <td><?php echo $arr['category_name'] ?></td>
                      <td><?php echo $arr['category_des'] ?></td>
                      <td><?php if($arr['time']=="0.5") echo "30 minutes"; elseif($arr['time']=="0.25") echo "15 minutes"; elseif($arr['time']=="0.30") echo "18 minutes"; elseif($arr['time']=="0.75") echo "45 minutes"; else echo $arr['time']." hour" ?></td>
                      <td><a href="add-question.php?id=<?php echo $arr['id']; ?>"><i class="fas fa-plus" style="color: #0099ff;"></i></a>&nbsp&nbsp<a href="edit-category.php?id=<?php echo $arr['id']; ?>"><i class="fas fa-edit" style="color: green;"></i></a>&nbsp&nbsp<a href="delete-category.php?id=<?php echo $arr['id']; ?>"><i class="fas fa-trash-alt" style="color: red;"></i></a>&nbsp&nbsp<a href="questionmanagement.php?id=<?php echo $arr['id']; ?>"><i class="far fa-eye" style="color: #0099ff;"></i></td>
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
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Do You really want to <b>delete</b> this?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Delete" below if you are ready to delete that.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="delete-category.php?id=<?php echo $arr['id']; ?>">Delete</a>
          </div>
        </div>
      </div>
    </div>
<?php 
include "footer-admin.php";
}
else
  {
    header("Location: admin-login.php");
  }?>