<ul>
			<li class="current_page_item"><a href="index.php">Home</a></li>
			<li><a href="all_food.php">Food</a></li>
		
			
			<?php
				if(isset($_SESSION['status'])&& $_SESSION['unm']=="admin")
				{
					echo '<li><a href="../logout.php">Logout</a></li>';
				}
				else
				{
					echo '<li><a href="../register.php">Register</a></li>';
				}
			?>
			
		</ul>