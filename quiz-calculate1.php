<?php
include "con.php";
session_start();
	$score=array();
	$cat=array();
	for ($k=0; $k <$_POST['ctotal'] ; $k++) 
			{ 
					$score[$k]=0;
					$cat[$k]=0;
					
			}
			$j=0;
			$paper_score=array();
	for ($i=1; $i <=$_POST['total'] ; $i++) 
	{ 
		$query="select correct_ans,category_id from question1 where id='".$_POST['question_id'.$i]."'";
		$result=mysqli_query($con,$query);
		$arr=mysqli_fetch_array($result,MYSQLI_BOTH);
		if($_POST['quiz'.$i]==$arr['correct_ans'])
			for ($k=0; $k <$_POST['ctotal'] ; $k++) { 
				if ($_POST['category_id'.$k]==$arr['category_id']) 
				{
					$cat[$k]=$arr['category_id'];
					$score[$k]++;
					$j++;
				}
				
			}
			
		
		$query="insert into user_answer1(user_id,question_id,answer) values('".$_SESSION['id']."','".$_POST['question_id'.$i]."','".$_POST['quiz'.$i]."')";
		mysqli_query($con,$query);
	}
	
	for ($k=0; $k <$_POST['ctotal'] ; $k++)
	{
		$cat_sc_array[$cat[$k]] = $score[$k];
		$cat_tsc_array[$cat[$k]] = $_POST['cqtotal'.$k];
	}
	$cat_sc_Encoded = json_encode($cat_sc_array);
	$cat_tsc_Encoded = json_encode($cat_tsc_array);
	$query="update users1 set score='".$cat_sc_Encoded."',tscore='".$cat_tsc_Encoded."',result='".$j."',total='".$_POST['total']."',status='1' where id='".$_SESSION['id']."'";
	$result=mysqli_query($con,$query);
	if ($result) {

		include "mail.php";
		session_destroy();
		
	$arr=mysqli_fetch_array($result,MYSQLI_BOTH);
		session_start();
		$_SESSION['score']=$j;
		$_SESSION['total']=$_POST['total'];
	}	
		header("Location: thanks.php");
	

?>