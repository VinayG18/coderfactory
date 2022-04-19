<?php include 'db_connection.php';


if(!isset($_SESSION['admin']))
{
 echo "<script>window.location='index.php';</script>";
}
?>

<header class="header">

				<div class="logo-container">
				<link rel = "shortcut icon" href = "CodeFactoryLogo/icon3.png"  />
					<a href="http://preview.oklerthemes.com/porto-admin/" class="logo">
						<img src="assets/images/logo1.png" height="45" width="100%"  alt="CodeFactory Admin" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
				
				<div class="header-right">
			
					
			
								
					
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
							<?php
							$_GET['admin_id'] = $_SESSION['admin'];
							$id = $_GET['admin_id'];						
							$result = mysqli_query($conn, "select admin_photo from tbl_admin where admin_name = '$id'");
							$row = mysqli_fetch_row($result);
							?>
								<img src="<?=$row[0]?>" alt="Vinay Ghayel" class="img-circle" data-lock-picture="assets/images/%21logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="Vinay Ghayel" data-lock-email="vinay.g2404@gmail.com">
								<span class="name"><?php echo $_SESSION['admin']; ?></span>
								<span class="role">administrator</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
					
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" href="logout.php"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				


				</header>
				
				