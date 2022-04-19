<?php include 'db_connection.php';
session_start();?>
<!doctype html>
<html class="fixed">
	
<!-- Mirrored from preview.oklerthemes.com/porto-admin/1.3.0/forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 29 Dec 2014 11:15:44 GMT -->
<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Admin - Add Category</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		<section class="body">

			<!-- start: header -->
			<?php include "header.php"; ?>
				
			
				<!-- start: search & user box -->
				
				<!-- end: search & user box -->
			
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<?php include "sidemenu.php"; ?>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Category</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="dashboard.php">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Manage Categories & Skills</span></li>
								<li><span>Add Category</span></li>
							</ol>
					
							<a class="sidebar-right-toggle"></a>
						</div>
					</header>

					<!-- start: page -->
					<div class="row">
						<div class="col-md-15">
							<form id="form1"  class="form-horizontal" method="post">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>

										<h2 class="panel-title">Add Category</h2>
										
									</header>
									<div class="panel-body">
										<div class="form-group">
											<label class="col-sm-3 control-label">Add Category<span class="required">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="addcategory" class="form-control" placeholder="eg.: IT and Programming" data-bvalidator="required"/>
											</div>
										</div>								
									</div>
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<button class="mb-xs mt-xs mr-xs btn btn-warning" name="submit">Add Category</button>												
											</div>
										</div>
									</footer>
								</section>
							</form>
							<?php
								if (isset($_REQUEST['submit']))
								{
									$res = mysql_query("select * from tbl_category where cat_name = '".$_REQUEST['addcategory']."'");
									if(mysql_num_rows($res)>0)
									{
							?>
										<div class="alert alert-warning">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
											<strong>Category Name is Already Exists.</strong>
										</div>
							<?php
									}
									else
									{
								
										mysql_query("insert into tbl_category values(NULL,'".$_REQUEST['addcategory']."')");								
								
							?>
									<div class="alert alert-success">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
										<strong>Well done!</strong> Data Inserted Successfully....
									</div>
							
							<?php
								}
							}							
							?>
							
						</div>
						<!-- col-md-6 -->
						
					</div>
					
					<!-- end: page -->
				</section>
			</div>

			
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>	
		
		
		<script type="text/javascript" src="jquery.bvalidator.js"></script>
<script type="text/javascript">
$(document).ready(function () { 
	
	$('.showsource').each(function(){
		var id = $(this).attr('id');
		var source = $('#' + id + 'v').html();
		$('#' + id).text(source); 
	});
}); 
</script>
<link href="bvalidator.theme.gray2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"> var optionsGray2 = { classNamePrefix: 'bvalidator_gray2_', position: {x:'center', y:'center'}, offset: {x:15, y:0}, template: '<div class="{errMsgClass}"><div class="bvalidator_gray2_arrow"></div><div class="bvalidator_gray2_cont1">{message}</div></div>' }; $(document).ready(function () { $('#form1').bValidator(optionsGray2); }); </script>
		
			<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		<script src="assets/vendor/jquery-cookie/jquery.cookie.js"></script>		<script src="assets/vendor/style-switcher/style.switcher.js"></script>		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->		<script src="assets/vendor/jquery-validation/jquery.validate.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>

		<!-- Examples -->
		<script src="assets/javascripts/forms/examples.validation.js"></script>
	</body>

<!-- Mirrored from preview.oklerthemes.com/porto-admin/1.3.0/forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 29 Dec 2014 11:15:48 GMT -->
</html>