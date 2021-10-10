<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="w3.css" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand">Food Shop</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="#" class="nav-link">Registration Page</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div class="container col-md-20">
		<div class="card">
			<div class="card-body">
				<form action="check.jsp" method="post">
					<fieldset class="form-group">
						<label> <i class="fa fa-file-signature"></i>&nbsp&nbspFirst
							Name :
						</label> <input type="text" class="form-control" name="fname"
							placeholder="enter your first name" value="" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label> <i class="fa fa-file-signature"></i>&nbsp&nbspLast
							Name :
						</label> <input type="text" class="form-control" name="lname"
							placeholder="enter your last name" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label> <i class="fa fa-envelope"></i>&nbsp&nbspEmail :
						</label> <input type="email" class="form-control" name="email"
							placeholder="enter your email id" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label> <i class="fa fa-user"></i>&nbsp&nbspUser Name :
						</label> <input type="text" class="form-control" name="username"
							placeholder="enter your username" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label> <i class="faa fa-unlock-alt"></i>&nbsp&nbspPassword:
						</label> <input type="password" class="form-control" name="password"
							placeholder="enter your password" value="" required="required">
					</fieldset>
					<button type="submit" class="btn btn-success">Sign Up</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>