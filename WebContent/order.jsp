<%@page import="java.math.BigDecimal"%>
<%@ page import="com.kitchenstory.dbutilities.DBConnection"%>
<html>
<head>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirm your Order</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="css1.css" type="text/css">
<link rel="stylesheet" href="w3.css" type="text/css">
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
<%
	if((session.getAttribute("username") == null) 
			|| (session.getAttribute("username") == "")){
%>
<p>The Session was Expired...</p>
<br>
<a href="index.jsp">Click here to Login Again</a>
<%} else {
	float sum = 0;
	Connection connection = DBConnection.init();
	Statement statement = connection.createStatement();
	ResultSet resultSet;
	String[] sports;
	%>

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
					<li><a href="logout.jsp">Log out<i>(<%out.print(session.getAttribute("username")); %>)
						</i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<%
	ArrayList<Float> arrayList = new ArrayList<Float>();
	sports = request.getParameterValues("chk1");
	out.println("&nbsp &nbsp &nbsp &nbsp &nbsp <h1 style='display:inline-block;"
	 + "color:blue;padding:5px;border:2px solid #616161;'>Your Cart</h1>");
	out.println("<table class='table table-bordered'><thead class='thead-dark'>"
			+ "<tr><th>Item Name</th><th>Quantity</th><th>Total</th></tr></thead>");
	float count = 0;
	if (sports != null) {
		for (int i = 0 ; i < sports.length; i++){
			statement.executeQuery("SELECT item_name, price, FROM items WHERE id="
					+ sports[i] + "");
			resultSet = statement.getResultSet();
			while(resultSet.next()){
				String nameValue = resultSet.getString("item_name");
				float priceValue = resultSet.getFloat("price");
				%><input type="hidden" id="cost" value="<%=priceValue%>">
				<%
					arrayList.add(priceValue);
					sum += priceValue;
					int quantity = 1;
					count++;
					out.println("<tr><td>" + nameValue + "</td><td>" + quantity
							+ "</td><td><div id='total1'>" + priceValue
							+ "</div></td></tr>");
					count += 1;
 			}
		}
		out.println("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px;'>"
		+ count / 2 + "</td><td style='font-size:30px;'>" + sum 
		+ "</td></tr>");
		out.println("<tr></tr><tr colspan='3'><td colspan='3'><div>"
				+ "<a href='post.jsp'><input type='button' style='width:100%'"
				+ "class='w3-xlarge w3-btn w3-block w3-black' value='Proceed to Checkout'>"
				+ "</div></td></tr>");
	} else {
	%>
	<tr><td></td><td></td></tr>
	<% }%>
	</table>
	<h4>&nbsp<a href="success.jsp" style="color: #212121">Shop More Items</a></h4>
	<div id="footer" style="hieght:270px; display: block;"></div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom:0">
		<p class="">made by- Varun Rao.</p>
		<p class="">varunrao1760@gmail.com</p>
	</div>
</footer>
</html>
<% } %>