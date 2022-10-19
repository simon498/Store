<?php
include "config.php";
if (isset($_SESSION['email'])) {
    header('location: product.php');
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Good Samaritan Enterprises Arua</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="shortcut icon" href="themes/images/products/gse.png">
</head>
<body>
<div class="login-page">
		<div class="form-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3" style="margin-top:4%">
						<h1 class="text-center text-bold text-light mt-4x">SIGN UP</h1>
						<div class="well row pt-2x pb-3x bk-light">
							<div class="col-md-8 col-md-offset-2">
							
								<form action="register.php" class="mt" method="post">
									<label for="" class="text-uppercase text-sm">Your Username</label>
									<input type="text" placeholder="Username" name="username" class="form-control mb" required>
                                    <br>
                                    <label for="" class="text-uppercase text-sm">Your Email</label>
									<input type="email" placeholder="Email" name="email" class="form-control mb" required>
                                    <br>
									<label for="" class="text-uppercase text-sm">Password</label>
									<input type="password" placeholder="Password" name="password" class="form-control mb" required>
									<br>

									<input type="submit" name="submit" class="btn btn-primary btn-block" value="Signup" >
									<br>
									<p class="register">Have an account? <a href="index.php"> Login Here</a> </p>

								</form>
                               
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>		