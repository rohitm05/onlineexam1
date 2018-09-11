<?php
session_start();
include 'con.php';
if (isset($_POST['add-btn'])) {
	$post=implode(",",$_POST['post']);
	$expr=implode(",",$_POST['expr']);
	$query="insert into category1 (category_name,category_des,post,exper,time) values('".$_POST['name']."','".$_POST['description']."','".$post."','".$expr."','".$_POST['time']."')";
	
	mysqli_query($con,$query);
	$result=mysqli_affected_rows($con);
	if($result>0)
	{

		$_SESSION['msg']="Category added successfully";
		header("Location: category.php");
	}
	else
	{
	  $_SESSION['err_msg']="Category was not added";
		header("Location: category.php");	
	}

}



?>