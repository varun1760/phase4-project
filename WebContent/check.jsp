<%@ page import="com.kitchenstory.dbutilities.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String email = request.getParameter("email");
	
	try{
		Connection connection = DBConnection.init();
		Statement statement = connection.createStatement();
		
		int i = statement.executeUpdate("INSERT INTO members(first_name, last_name,"
				+" email, username, password) VALUES('" + fname + "',' " + lname + "',' " 
						+ email + "',' " + username + "',' " + password + "')");
		if (i > 0) {
			session.setAttribute("username", username);
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
		
	} catch(SQLException sqle) {
		sqle.printStackTrace();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>