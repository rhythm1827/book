<?php
require('includes/config.php');

			$query="delete from food where b_id =".$_GET['sid'];
		
			mysqli_query($conn,$query) or die("can't Execute...");
			
			
			header("location:all_food.php");

?>