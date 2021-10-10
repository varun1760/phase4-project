<%@ page import="com.kitchenstory.dbutilities.DBConnection"%>
<%@ page import="java.sql.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Connection connection = DBConnection.init();
	Statement statement = connection.createStatement();
	ResultSet resultSet;
	
	resultSet = statement.executeQuery("SELECT * FROM members WHERE username='" 
			+ username + "' and password='" + password + "'");
	
	if (resultSet.next()){
		session.setAttribute("username", username);
		response.sendRedirect("success.jsp");
	} else {
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Food Shop</title>
<link rel="stylesheet" href="w3.css" type="text/css">
</head>

<style>
	.dfHgt{
	color: #212121;
	text-align: center;
	}
</style>
<div class="w3-container w3-center">
	<div class="w3-xxlarge">Food Shop</div>
</div>
<p class="dfHgt">
	!<br>
	Wrong username or password.<br>
	If you do not redirect within 5 seconds <a href="index.jsp">click here</a>
	<script>
		setTimeout(function(){
			window.location.href = "index.jsp"
		}, 5000);
	</script>
</p>
</html>
<%
}
%>
