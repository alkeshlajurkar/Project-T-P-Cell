<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.lang.NullPointerException"%>
<%@page import=" java.lang.NumberFormatException"%>
<%@page import="java.util.*"%>
<%!String url = "jdbc:mysql://sql113.epizy.com/tpcell";%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement stat = null;
PreparedStatement ps = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wd.org/TR/html4/loose.dtd">
<html>
<title>Student/Register</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/fontawesome.css">
<script src="css/wd.css"></script>
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.wd-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.wd-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 8px;
    
}
</style>
<body class="wd-black">

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="wd-sidebar wd-bar-block wd-small wd-hide-small wd-center">
  <!-- Avatar image in top left corner -->
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/hom.svg" style="width:60px"></i>
    <p>HOME</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i></i>
    <p>ABOUT</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/folder.svg"></i>
    <p>All Training</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/group.svg"></i>
    <p>All Job</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/phonebook.svg"></i>
    <p>CONTACT</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i>
    <p>LOGIN</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/speechbubble.svg"></i>
    <p>REVIEW</p>
  </a>
  <a href="logindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/computer.svg"></i>
    <p>ADMIN</p>
  </a>
</nav>


<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="wd-top wd-hide-large wd-hide-medium" id="myNavbar">
  <div class="wd-bar wd-black wd-opacity wd-hover-opacity-off wd-center wd-small">
    <a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">HOME</a>
    <a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">ABOUT</a>
	<a href="#alltraining" class="wd-bar-item wd-button" style="width:25% !important">All Training</a>
	<a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">All Job</a>
    <a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">CONTACT</a>
	<a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">LOGIN</a>
	<a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">REVIEW</a>
	<a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">ADMIN</a>
  </div>
</div>

<!-- Page Content -->
<div class="wd-padding-large" id="main">
  <!-- Header/Logindetails -->
  <header class="wd-container wd-padding-32 wd-center wd-black wd-opacity wd-hover-opacity-off" id="home">
  <br><br>
    <h1 style="font-size:6vw">Training & Placement Cell</h1>
    <h3 style="font-size:2vw"><p>Prof. Ram Meghe Institute of Technology and Research Badnera-Amravati</p></h3>
  </header>
  <!-- Header/Logindetails -->
 
 <div class="wd-padding-64 wd-content wd-text-grey" id="review">
<form action="addstud_action.jsp" method="post">
       <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">New Student Registration</li>
         <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="Student ID" required name="id"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="First Name" required name="fname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="Last Name" required name="lname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="email" placeholder="Email" required name="uname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="password" placeholder="Password" required name="password"></p></li>
          <li class="wd-light-grey wd-padding-24">
            <p>
        <button class="wd-button wd-white wd-padding-large wd-hover-black" type="submit">
          <i><img src="wdimages/compass.svg" style="width:15px"></i> ADD
        </button>
      </p></li>
        </ul>
		</form>
 </div>
</body>
</html>
