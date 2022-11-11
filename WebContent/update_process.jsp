<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://sql113.epizy.com/tpcell";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("name");
String uname=request.getParameter("uname");
String password=request.getParameter("password");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update registration set id=?,fname=?,lname=?,uname=?,password=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, fname);
ps.setString(3, lname);
ps.setString(4, uname);
ps.setString(5, password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>