<!-- Sign in page -->
<?php
session_start();
include('included/config.php');
if (isset($_POST['login'])) {
	$uname = $_POST['username'];
	$password = $_POST['password'];
	$sql = "SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
	$query = $con->prepare($sql);
	$query->bindParam(':uname', $uname, PDO::PARAM_STR);
	$query->bindParam(':password', $password, PDO::PARAM_STR);
	$query->execute();
	$results = $query->fetchall(PDO::FETCH_OBJ);
	if ($query->rowCount() > 0) {
		$_SESSION['alogin'] = $_POST['username'];
		echo "<script type='text/javascript'> document.location = 'dashboard2.php'; </script>";
	} else {

		echo "<script>alert('Invalid!! please enter correct details');</script>";
	}
}

?>

<!DOCTYPE HTML>
<html>

<head>
	<title>Sign in</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="css/login.css" rel='stylesheet' type='text/css' /> <!-- for login designs -->
	<link href="css/style.css" rel='stylesheet' type='text/css' /> <!-- for designs -->
	<link rel="stylesheet" href="css/morris.css" type="text/css" />
	<!-- Graph CSS -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<!-- jQuery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jQuery -->
	<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
	<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<!-- //lined-icons -->
</head>

<body>
	<div class="maincontainer">
		<div class="containers">
			<div class="left">
				<h2>Sign In</h2>
				<form class="myform" method="post">
					<div class="username">
						<label>
							Username:
							<input type="text" name="username" class="username" placeholder="Admin Username" required="">
						</label>
						<div class="clearfix"></div>
					</div>
					<div class="password">
						<label>
							Enter Password
							<input type="password" name="password" class="password" placeholder="Password" required="">
						</label>
						<div class="clearfix"></div>
					</div>
					<div class="login-w3">
						<input type="submit" class="login" name="login" value="Sign In">
						<a href="../index.php">Back to home</a>
					</div>
			</div>
			<div class="right">
				<div class="image">
					<img alt="login image" src=" ./Images/login.svg">
				</div>
			</div>
			</form>

		</div>
	</div>
</body>

</html>