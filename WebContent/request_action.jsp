<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create-Account</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String fname = request.getParameter("fname").toUpperCase();
	String lname = request.getParameter("lname").toUpperCase();
	String mob = request.getParameter("mob");
    String email = request.getParameter("email");
    String branch = request.getParameter("branch");
	String year = request.getParameter("year");
    String training = request.getParameter("training");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://sql113.epizy.com/tpcell","root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into training_enrollment(id,fname,lname,mob,email,branch,year,training) values ('" + id + "','" + fname + "','" + lname + "','" + mob + "','" + email + "','" + branch + "','" + year + "','" + training + "')");
    if (i > 0) {
        //session.setAttribute("uname", uname);
        out.println(" <h1><b>You are Successfully Register for Training Program ! <a href='index.jsp'>Go Back</h1></b></a>");
       // out.print("Registration Successfull!"+"<a href='Login.jsp'>Go to Login</a>");
    } else {
    	out.println(" <h1><b>Try Again ! <a href='index.jsp'>Go Back</h1></b></a>");
    }
%>
</body>
</html>