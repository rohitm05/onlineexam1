<?php
include "con.php";
session_start(); 
if (isset($_POST['add-btn'])) 
{ 
	$query="update question1 set question='".addslashes(htmlspecialchars($_POST['question'], ENT_QUOTES))."', answer1='".addslashes(htmlspecialchars($_POST['answer1'], ENT_QUOTES))."', answer2='".addslashes(htmlspecialchars($_POST['answer2'], ENT_QUOTES))."', answer3='".addslashes(htmlspecialchars($_POST['answer3'], ENT_QUOTES))."', answer4='".addslashes(htmlspecialchars($_POST['answer4'], ENT_QUOTES))."', correct_ans='".$_POST['correct']."' where id='".$_POST['id']."'";
	$result=mysqli_query($con,$query);
	if($result)
	{
		$_SESSION['msg']="Question updated successfully";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);
	}
	else
	{
		$_SESSION['err_msg']="Question was not updated";
		header("Location: questionmanagement.php?id=".$_POST['category_id']);	
	}
} 



?>