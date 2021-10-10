<%
if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
<center>
	<p align="center" style="font-size: 45px">Food Shop</p>
	Session Expired. <a href="index.jsp"
		style="color: #616161; padding-top: 23px">Sign in here</a>
</center>
<%} else {
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Food Shop</title>

<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="css1.css" type="text/css">
<link rel="stylesheet" href="w3.css" type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
	crossorigin="anonymous">

<script>
	var b = 0;
	function update_value(chk_bx) {
		if (chk_bx.check) {
			var a = "checked";
			b += 1;
		} else {
			var a = "not checked";
			if (b > 0) {
				b -= 1;
			} else if (b == 0) {
				b = 0;
			}
		}
		if (b == 0) {
			documnet.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp0';
		} else {
			documnet.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp0'
					+ b + '';
		}
	}
</script>
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
				<a href="index.jsp">Food Shop</a>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span><img
					src="Images/shopping-cart.png" height=40 width=40>0</span>
			</div>
			<br>
			<div id="span">
				<ul id="navigation">
					<li><a href="#">Welcome</a></li>
					<li><a href="#">Location</a></li>
					<li><a href="#">Our Chef</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="logout.jsp">Log Out<i>(<% out.print(session.getAttribute("username")); %>)
						</i></a></li>
				</ul>
			</div>
		</div>
	</div>

	<form action="order.jsp" method="post">
		<table class="w3-table" style="backgroound-color: #F5F5F5">
			<tr>
				<td><img src="Images/desi-thali.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/special-thali.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/premium-thali.png" class="rounded-circle" height=290
					width=250></td>
			</tr>
			<tr>
				<td><input class="mv1" type="checkbox" name="chk1" value="1"
					onchange="update_value(this);"></td>
				<td><input class="mv2" type="checkbox" name="chk1" value="2"
					onchange="update_value(this);"></td>
				<td><input class="mv3" type="checkbox" name="chk1" value="3"
					onchange="update_value(this);"></td>
			</tr>
			<tr>
				<td align="center">Desi Thali RS. 200</td>
				<td align="center">Special Thali RS. 250</td>
				<td align="center">Premium Thali RS. 350</td>
			</tr>

			<tr>
				<td><img src="Images/daal.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/alloo-zira.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/kadhai-paneer.png" class="rounded-circle" height=290
					width=250></td>
			</tr>
			<tr>
				<td><input class="mv4" type="checkbox" name="chk1" value="4"
					onchange="update_value(this);"></td>
				<td><input class="mv5" type="checkbox" name="chk1" value="5"
					onchange="update_value(this);"></td>
				<td><input class="mv6" type="checkbox" name="chk1" value="6"
					onchange="update_value(this);"></td>
			</tr>
			<tr>
				<td align="center">Daal Tadka RS. 140</td>
				<td align="center">Alloo Zira RS. 90</td>
				<td align="center">Kadhai Paneer RS. 260</td>
			</tr>

			<tr>
				<td><img src="Images/pav-bhaji.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/idli-sambar.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/veg-biryani.png" class="rounded-circle" height=290
					width=250></td>
			</tr>
			<tr>
				<td><input class="mv7" type="checkbox" name="chk1" value="7"
					onchange="update_value(this);"></td>
				<td><input class="mv8" type="checkbox" name="chk1" value="8"
					onchange="update_value(this);"></td>
				<td><input class="mv9" type="checkbox" name="chk1" value="9"
					onchange="update_value(this);"></td>
			</tr>
			<tr>
				<td align="center">Pav Bhaji RS. 90</td>
				<td align="center">Idli Sambar RS. 150</td>
				<td align="center">Veg Birayani RS. 110</td>
			</tr>

			<tr>
				<td><img src="Images/butter-naan.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/lachha-paratha.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/methi-paratha.png" class="rounded-circle" height=290
					width=250></td>
			</tr>
			<tr>
				<td><input class="mv10" type="checkbox" name="chk1" value="10"
					onchange="update_value(this);"></td>
				<td><input class="mv11" type="checkbox" name="chk1" value="11"
					onchange="update_value(this);"></td>
				<td><input class="mv12" type="checkbox" name="chk1" value="12"
					onchange="update_value(this);"></td>
			</tr>
			<tr>
				<td align="center">Butter Naan RS. 50</td>
				<td align="center">Lachha Paratha RS. 60</td>
				<td align="center">Methi Paratha RS. 60</td>
			</tr>

			<tr>
				<td><img src="Images/samosa.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/sweet-lassi.png" class="rounded-circle" height=290
					width=250></td>
				<td><img src="Images/gulab-jamun.png" class="rounded-circle" height=290
					width=250></td>
			</tr>
			<tr>
				<td><input class="mv13" type="checkbox" name="chk1" value="13"
					onchange="update_value(this);"></td>
				<td><input class="mv14" type="checkbox" name="chk1" value="14"
					onchange="update_value(this);"></td>
				<td><input class="mv15" type="checkbox" name="chk1" value="15"
					onchange="update_value(this);"></td>
			</tr>
			<tr>
				<td align="center">Samosa RS. 30</td>
				<td align="center">Sweet Lassi RS. 50</td>
				<td align="center">Gulab Jamun RS. 40</td>
			</tr>

		</table>
		<br>
		<div id="order">
			<input type="submit" style="font-size: 45px" value="	Add to Cart		"
				class="btn btn-success">
		</div>
	</form>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="">made by- Varun Rao.</p>
		<p class="">varunrao1760@gmail.com</p>
	</div>
</footer>
<%
}
%>
</html>