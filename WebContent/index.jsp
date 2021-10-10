<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Food Shop</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"
	type="text/css">
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
				<li><a href="#" class="nav-link">Locations</a></li>
				<li><a href="#" class="nav-link">Our chefs</a></li>
				<li><a href="#" class="nav-link">About Us</a></li>
				<li><a href="register.jsp" class="nav-link">Registration
						Page</a></li>
				<li><a href="adminLogin.jsp" class="nav-link">Admin</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<fieldset style="width: 270px; float: right; background: white">
			<div class="container col-md-20">
				<h4>User Login:</h4>
				<div class="card">
					<div class="card-body">
						<form action="login.jsp" method="post">
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
							<fieldset class="form-group">
								<label>Create an Account</label> <a href="register.jsp"><input
									type="button" class="btn btn-success" value="Sign Up"></a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
	<div>
		<div style="text-align: center">
			Deliver excellent customer service at our restaurant<br>
			<h4>We Offer Following Dishes</h4>
		</div>
	</div>

	<table class="w3-table" style="backgroound-color: #14FFFF">
		<tr>
			<td><img src="Images/desi-thali.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/special-thali.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/premium-thali.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
		</tr>
		<tr>
			<td style="text-align: center">Desi Thali</td>
			<td style="text-align: center">Special Thali</td>
			<td style="text-align: center">Premium Thali</td>
		</tr>

		<tr>
			<td><img src="Images/daal.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/alloo-zira.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/kadhai-paneer.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
		</tr>
		<tr>
			<td style="text-align: center">Daal Tadka</td>
			<td style="text-align: center">Alloo Zira</td>
			<td style="text-align: center">Kadhai Paneer</td>
		</tr>

		<tr>
			<td><img src="Images/pav-bhaji.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/idli-sambar.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/veg-biryani.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
		</tr>
		<tr>
			<td style="text-align: center">Pav Bhaji</td>
			<td style="text-align: center">Idli Sambar</td>
			<td style="text-align: center">Veg Biryani</td>
		</tr>

		<tr>
			<td><img src="Images/butter-naan.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/lachha-paratha.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/methi-paratha.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
		</tr>
		<tr>
			<td style="text-align: center">Butter Naan</td>
			<td style="text-align: center">Lachha Paratha</td>
			<td style="text-align: center">Methi Paratha</td>
		</tr>

		<tr>
			<td><img src="Images/samosa.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/sweet-lassi.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
			<td><img src="Images/gulab-jamun.png" class="rounded" style="width: 100%"
				height=250 width=250></td>
		</tr>
		<tr>
			<td style="text-align: center">Samosas</td>
			<td style="text-align: center">Sweet Lassi</td>
			<td style="text-align: center">Gulab Jamun</td>
		</tr>

	</table>
</body>

<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="">made by- Varun Rao.</p>
		<p class="">varunrao1760@gmail.com</p>
	</div>
</footer>
</html>