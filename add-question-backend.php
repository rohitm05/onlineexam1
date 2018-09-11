<?php
session_start();
include 'con.php';
if (isset($_POST['add-btn']) && isset($_POST['correct'])) {
	$query="insert into question1 (category_id,question,answer1,answer2,answer3,answer4,correct_ans) values('".$_POST['category_id']."','".addslashes(htmlspecialchars($_POST['question'], ENT_QUOTES))."','".addslashes(htmlspecialchars($_POST['answer1'],ENT_QUOTES))."','".addslashes(htmlspecialchars($_POST['answer2'],ENT_QUOTES))."','".addslashes(htmlspecialchars($_POST['answer3'],ENT_QUOTES))."','".addslashes(htmlspecialchars($_POST['answer4']))."','".$_POST['correct']."')";
	mysqli_query($con,$query);
	$result=mysqli_affected_rows($con);
	if($result>0)
	{
		$_SESSION['msg']="Question added successfully";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);
	}
	else
	{
	  $_SESSION['err_msg']="Question was not added";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);	
	}

}
else{
	$_SESSION['err_msg']="Question was not added";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);

}


?>