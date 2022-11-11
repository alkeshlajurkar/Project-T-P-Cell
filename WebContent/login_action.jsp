<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
String uname=request.getParameter("uname");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://sql113.epizy.com/tpcell","root", "root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from registration where uname='" + uname + "' and password='"+ password +"'");
if (rs.next())
{
    session.setAttribute("uname", uname);
    session.setAttribute("password",password);
    response.sendRedirect("stud_enrollment.jsp");
} else {
	 request.setAttribute("errorMessage", "Invalid uname or password");
	    request.getRequestDispatcher("/index.jsp").forward(request, response);

}
%>
</body>
</html>