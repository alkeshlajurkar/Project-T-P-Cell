<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.NullPointerException"%>
<%@page import=" java.lang.NumberFormatException"%>
<%
String id = request.getParameter("d");
int no=Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://sql113.epizy.com/tpcell","root","root");
Statement stat = conn.createStatement();
stat.executeUpdate("delete from registration where id='"+no+"");
response.sendRedirect("index.jsp");
%>