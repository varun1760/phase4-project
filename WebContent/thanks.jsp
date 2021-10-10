<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
<center>
	<img src="Images/112.gif" height=200 width=200><br> You must
	Log in First.<br> <a href="index.jsp"
		style="text-decoration: none; font-size: 23px; color: #009afd; padding-top: 23px">Please
		Login</a>
</center>
<%} else {
%>
<html>
<head>
<title>Thank You</title>
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
				<a href="index.jsp">Food Shop</a>
			</div>
			<div id="span">
				<ul id="navigation">
					<li><a href="#">Location</a></li>
					<li><a href="#">Our Chef</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="logout.jsp">Log Out<i>(<% out.print(session.getAttribute("username")); %>)
						</i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<h1 style="style.css">Thank you for making Order...<br>
	It will be deliver to you within next 30 minutes...</h1>
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