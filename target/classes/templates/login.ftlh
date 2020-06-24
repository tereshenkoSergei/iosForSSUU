<!DOCTYPE html>
<html>
<head>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href="css/custom.css" rel="stylesheet" type="text/css">
	<link href="images2/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
	<link href="images2/favicon-32x32.png" rel="icon" sizes="32x32" type="image/png">
	<link href="images2/favicon-16x16.png" rel="icon" sizes="16x16" type="image/png">
	<link href="/site.webmanifest" rel="manifest">
	<link href="images2/safari-pinned-tab.svg" rel="mask-icon">
	<meta content="#da532c" name="msapplication-TileColor">
	<meta content="#ffffff" name="theme-color">
	<title>Авторизация | ИОС СГТУ</title>
</head>
<body style="background-image: url('images/background.jpg')">

    <div class="overlay"></div>

	<div class="container">
		<div class="row" style="margin: 20px auto;">
			<div class="col-md-offset-3 col-md-6">
				<form class="form-horizontal" action="/login" method="post"  id="signin">
					<span class="heading">АВТОРИЗАЦИЯ</span>
					<div class="form-group">
						<input class="form-control" id="username"  name="username" placeholder="E-mail" type="email"> <i class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input class="form-control" id="password" name="password" placeholder="Password" type="password"> <i class="fa fa-lock"></i> <a class="fa fa-question-circle" href="#"></a>
					</div>
					<div class="form-group">
						<div class="main-checkbox">
							<input id="checkbox1" name="check" type="checkbox" value="none"> <label for="checkbox1"></label>
						</div><span class="text">Запомнить</span> <button class="btn btn-default" type="submit">ВХОД</button>
					</div>
					<input type="hidden" name="_csrf" value="${_csrf.token}" />
				</form>
			</div>
		</div><!-- /.row -->

	</div><!-- /.container -->
</body>
</html>