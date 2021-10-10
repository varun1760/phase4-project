<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/fontawesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous">
</head>

<body>
	<header> <nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: tomato">
	<div>
		<a href="" class="navbar-brand">Food Shop</a>
	</div>

	<ul class="navbar-nav">
		<li><a href="#" class="nav-link">Locations</a></li>
		<li><a href="#" class="nav-link">Our chefs</a></li>
		<li><a href="#" class="nav-link">About Us</a></li>
	</ul>
	</nav> </header>
	<br>
	<br>

	<div class="container col-md-20">
		<h4>Admin Login:</h4>
		<div class="card">
			<div class="card-body">
				<form action="ValidateAdmin" method="get">
					<fieldset class="form-group">
						<label> <i class="fa fa-user"></i>&nbsp&nbspUser Name :
						</label> <input type="text" class="form-control" name="username"
							placeholder="enter your username" value="" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label> <i class="faa fa-unlock-alt"></i>&nbsp&nbspPassword
							:
						</label> <input type="password" class="form-control" name="password"
							placeholder="enter your password" value="" required="required">
					</fieldset>
					<button type="submit" class="btn btn-success">Sign In</button>
				</form>
			</div>
		</div>
	</div>

</body>
<footer>
<div class="jumbotron text-center" style="margin-bottom: 0">
	<p class="">made by- Varun Rao.</p>
	<p class="">varunrao1760@gmail.com</p>
</div>
</footer>
</html>