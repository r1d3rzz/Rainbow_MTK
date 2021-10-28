<?php 
error_reporting(1);
require '../boostrap.php';

	if(isset($_POST['login']))
	{
		$name = $_POST['name'];
		$pass = $_POST['pass'];

		$sql = mysqli_query($con,"SELECT * FROM admin WHERE name='$name' AND password='$pass'");
		$val = mysqli_num_rows($sql);

		if($val == 0)
		{
			echo "<script>alert('Invalid Password or Username')</script>";
			echo "<script>location='index.php'</script>";
		}
		else
		{
			header('location:index.view.php');
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>login</title>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md">
				<div class="wrapper fadeInDown">
				  <div id="formContent">
				    <!-- Tabs Titles -->

				    <!-- Icon -->
				    <!-- <div class="fadeIn first">
				      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
				    </div> -->

				    <!-- Login Form -->
				    <form method="post">
				      <h2>Welcome Admin</h2>
				      <input type="text" id="login" class="fadeIn second" name="name" autofocus required="" placeholder="Username">
				      <input type="password" id="password" class="fadeIn third" name="pass" required="" placeholder="Password">
				      <input type="submit" class="fadeIn fourth" value="Log In" name="login"><br>
				    </form>

				    <!-- Remind Passowrd -->
				    <!-- <div id="formFooter">
				      <a class="underlineHover" href="#">Forgot Password?</a>
				    </div> -->

				  </div>
				</div>
			</div>
		</div><!--login-->
	</div>
</body>
</html>
