<html>
<head>
<title>Post Order</title>
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
<style>
body, div, ul, li, p {
	font-family: arial;
}

#header {
	hieght: 120px;
	display: block;
	backgroun-color: #F5F5F5
}

#header .logo a {
	padding-left: 450px;
	color: black;
	text-decoration: none;
	font-size: 40px
}

#header .logo {
	background-color: tomato;
}

#navigation {
	display: inline-block;
	list-style: none;
	line-height: 50px;
	margin: 0;
	padding-left: 20
}

#navigation ul {
	display: inline-block;
	list-style: none;
	margin: 0;
	padding: 0;
}

#navigation li {
	float: left;
	width: 180px;
	text-align: right;
}

#navigation li a {
	color: #616161;
	font-size: 20px;
	line-height: 10px;
	text-decoration: none;
}

#navigation li a:hover {
	font-size: 20px;
	color: #212121;
}

#navigation li.active a {
	color: black;
	padding: 12px;
	background-color: transparent;
	font-size: 20px;
	border: 2px solid black;
	border-radius: 10px;
}
</style>
<body>
	<div id="header">
		<div>
			<div class="logo">
				<a href="index.jsp" style="color: block">Food Shop</a>
			</div>
			<br>
			<div id="span">
				<ul id="navigation">
					<li><a href="#">Location</a></li>
					<li><a href="#">Our Chef</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container col-md-20">
		<h4>Enter Your Delivery Address:</h4>
		<div class="card">
			<div class="card-body">
				<form action="thanks.jsp" method="post">
					<fieldset class="form-group">
						<label> <i class="fa fa-user"></i>&nbsp&nbspEnter Full Name :
						</label> <input type="text" class="form-control" name="name"
							placeholder="enter your full name" value="" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label> <i class="fa fa-phone"></i>&nbsp&nbspEnter your Mobile Number :
						</label> <input type="number" class="form-control" name="phone"
							placeholder="enter your phone number" value="" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label> <i class="fa fa-envelope"></i>&nbsp&nbspEnter your Email Id :
						</label> <input type="email" class="form-control" name="email"
							placeholder="enter your email id" value="" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label> <i class="fa fa-city"></i>&nbsp&nbspnbspSelect your city :
						</label>
						<select class="form-control" name="city">
						<option value="1" selected="selected">---Choose City---</option>
						<option value="Delhi" >Delhi</option>
						<option value="Noida" >Noida</option>
						<option value="Gurugram" >Gurugram</option>
						<option value="Ghaziabad" >Ghaziabad</option>
						</select>
					</fieldset>
					
					<fieldset class="form-group">
						<label for="adr"> <i class="fa fa-address-card"></i>&nbsp&nbspAddress :
						</label> <input type="text" class="form-control" id="adr" name="address"
							placeholder="area/landmark" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label for="pin"> <i class="fa fa-map-pin"></i>&nbsp&nbspPin Code :
						</label> <input type="text" class="form-control" id="pin" name="pin"
							placeholder="6-digit" value="" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label><input type="checkbox" checked="checked" name="sameadr">Shipping Address same as Billing</label> 
					</fieldset>
					<button type="submit" class="btn btn-success">Continue to checkout</button>
				</form>
			</div>
		</div>
	</div>
	
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom:0">
		<p class="">made by- Varun Rao.</p>
		<p class="">varunrao1760@gmail.com</p>
	</div>
</footer>
</html>