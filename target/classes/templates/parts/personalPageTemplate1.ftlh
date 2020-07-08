<#macro personalPageTemplate1 name="" email="" role="">



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Личный кабинет | ИОС СГТУ</title>
	<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' rel='stylesheet'>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet'>
  <link href="images2/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
	<link href="images2/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
	<link href="images2/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">
	<link href="images2/safari-pinned-tab.svg" rel="mask-icon">
	<meta content="#da532c" name="msapplication-TileColor">
	<meta content="#ffffff" name="theme-color">

	<style>
		html, body {
			height: 100%;
		}
		body {
			display: flex;
			flex-direction: column;
			background: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url("images/JJLhHfr.jpeg");
			background-size: cover;
			/* background-attachment: fixed; */
		}
		body {
			overflow-x:hidden;
		}
		#mainNav {
			background-color: darkslategrey;
			color:white;
		}
		#mainNav .navbar-brand {
			color: #fed136;
			font-family: 'Kaushan Script', 'Helvetica Neue', Helvetica, Arial, cursive;
		}


		.content {
			flex: 1 0 auto;
		}
		.footer {
			flex-shrink: 0;
		}


		footer {
			text-align: center;
			background-color: white;
		}
		.ft{
			padding-left:22px;
			padding-right:31px;
		}

		footer span.copyright {
			font-size: 90%;
			line-height: 40px;
			text-transform: none;
			font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
			color:blak;
		}

		footer ul.quicklinks {
			font-size: 90%;
			line-height: 40px;
			margin-bottom: 0;
			text-transform: none;
			font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
		}

		ul.social-buttons {
			margin-bottom: 0;
		}

		ul.social-buttons li a {
			font-size: 20px;
			line-height: 40px;
			display: block;
			width: 40px;
			height: 40px;
			-webkit-transition: all 0.3s;
			-moz-transition: all 0.3s;
			transition: all 0.3s;
			color: white;
			border-radius: 100%;
			outline: none;
			background-color: #212529;
		}

		ul.social-buttons li a:active, ul.social-buttons li a:focus, ul.social-buttons li a:hover {
			background-color: #fed136;
		}
		.content{
			/*margin-top:60px;*/
		}


		/* Profile container */
		.profile {
			margin: 60px 0;
		}

		/* Profile sidebar */
		.profile-sidebar {
			margin: 60px auto;
			background: #fff;
			max-width: 378px;
			padding: 20px 20px 20px 20px;
		}

		.profile-userpic img {
			float: none;
			display:block;
			margin:auto;
			width: 50%;
			height: 50%;
			-webkit-border-radius: 50% !important;
			-moz-border-radius: 50% !important;
			border-radius: 50% !important;
		}

		.profile-usertitle {
			text-align: center;
			margin-top: 20px;
		}

		.profile-usertitle-name {
			color: #5a7391;
			font-size: 16px;
			font-weight: 600;
			margin-bottom: 7px;
		}

		.profile-usertitle-job, .profile-usertitle-email  {
			text-transform: uppercase;
			color: #5b9bd1;
			font-size: 12px;
			font-weight: 600;
			margin-bottom: 15px;
		}

		.profile-userbuttons {
			text-align: center;
			margin-top: 10px;
		}

		.profile-userbuttons .btn {
			text-transform: uppercase;
			font-size: 11px;
			font-weight: 600;
			padding: 6px 15px;
			margin-right: 5px;
		}

		.profile-userbuttons .btn:last-child {
			margin-right: 0px;
		}

		.profile-usermenu {
			margin-top: 30px;
		}

		.profile-usermenu ul li {
			border-bottom: 1px solid #f0f4f7;
		}

		.profile-usermenu ul li:last-child {
			border-bottom: none;
		}

		.profile-usermenu ul li a {
			color: #93a3b5;
			font-size: 14px;
			font-weight: 400;
		}

		.profile-usermenu ul li a i {
			margin-right: 8px;
			font-size: 14px;
		}

		.profile-usermenu ul li a:hover {
			background-color: #fafcfd;
			color: #5b9bd1;
		}

		.profile-usermenu ul li.active {
			border-bottom: none;
		}

		.profile-usermenu ul li.active a {
			color: #5b9bd1;
			background-color: #f6f9fb;
			border-left: 2px solid #5b9bd1;
			margin-left: -2px;
		}

		/* Profile Content */
		.profile-content {
			padding: 20px;
			background: #fff;
			min-height: 460px;
		}

		.nav>li {
			position: relative;
			display: block;
		}
	</style>
</head>
<body>
	<div class="container content">
		<div class="profile-sidebar rounded">
			<div class="profile-userpic">
				<img alt="" class="img-responsive" src="images/employee_job_hiring_career-256.png"></div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">
					${name}
				</div>
				<div class="profile-usertitle-job">
					${email}
				</div>
				<div class="profile-usertitle-email" style="margin-top: -8px !important;">
					${role}
				</div>
			</div>
			<div class="profile-userbuttons">
				<form action="/logout" method="post" enctype="multipart/form-data">
					<input type="hidden" name="_csrf" value="${_csrf.token}" />
				<button class="btn btn-danger btn-sm"  type="submit">Выйти</button>
				</form>
			</div><!-- Здесь могут быть специальные функции, о которых говорилось в нашем отчете для Шульги -->
			<div class="profile-usermenu sidebar-sticky">
				<ul class="nav flex-column">


          <!-- Начало списка -->
				<#nested>
          <!-- Конец списка -->



				</ul>
			</div>
		</div>
	</div>
	<script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'>
	</script> 
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'>
	</script> 
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'>
	</script>
</body>
</html>

</#macro>