<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.NullPointerException"%>
<%@page import=" java.lang.NumberFormatException"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://sql113.epizy.com/";
String database = "tpcell";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wd.org/TR/html4/loose.dtd">
<html>
<title>TRPCELL/Logindetails</title>
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
  <a href="registrationdetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i></i>
    <p>REGISTRATION DETAILS</p>
  </a>
  <a href="trainingdetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/folder.svg"></i>
    <p>TRAINING ENROLLMENT</p>
  </a>
  <a href="jobdetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/group.svg"></i>
    <p>JOB APPLICATION</p>
  </a>
  <a href="contactdetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/phonebook.svg"></i>
    <p>CONTACT</p>
  </a>
  <a href="reviewdetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/speechbubble.svg"></i>
    <p>REVIEW</p>
  </a>
  <a href="admindetails.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/computer.svg"></i>
    <p>ADMIN</p>
  </a>
</nav>


<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="wd-top wd-hide-large wd-hide-medium" id="myNavbar">
  <div class="wd-bar wd-black wd-opacity wd-hover-opacity-off wd-center wd-small">
    <a href="logindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">HOME</a>
    <a href="registrationdetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">REGISTRATION DETAILS</a>
	<a href="trainingdetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">TRAINING ENROLLMENT</a>
	<a href="jobdetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">JOB APPLICATION</a>
    <a href="contactdetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">CONTACT</a>
	<a href="reviewdetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">REVIEW</a>
	<a href="admindetails.jsp" class="wd-bar-item wd-button" style="width:25% !important">ADMIN</a>
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
    
<center><h1>ADMIN DASHBOARD</h1></center>
<br><br>
<div class="wd-padding-large" id="registrationdetails">
<br>
<br>
<table>
<tr>
<td><center>EDIT TR & JOB NOTIFICATION</center></td>
<td><center>REGISTRATION DETAILS</center></td>
<td><center>TRAINING DETAILS</center></td>
<td><center>JOB DETAILS</center></td>
</tr>
<tr>
<td><a href="trjobnotification.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black">CHECK</button></center></a>
</td>
<td><a href="registrationdetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black">CHECK</button></center></a>
</td>
<td><a href="trainingdetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black">CHECK</button></center></a>
</td>
<td><a href="jobdetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black">CHECK</button></center></a>
</td>
</tr>
<tr>
<td><center>REVIEW DETAILS</center></td>
<td><center>CONTACT DETAILS</center></td>
<td><center>ADMIN DETAILS</center></td>
<td><center>LOGOUT</center></td>
</tr>
<tr>
<td><a href="reviewdetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black">CHECK</button></center></a>
</td>
<td><a href="contactdetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black" >CHECK</button></center></a>
</td>
<td><a href="admindetails.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black" >CHECK</button></center></a>
</td>
<td><a href="logout_action.jsp"><center><button class="wd-button wd-white wd-padding-large wd-hover-black" >CHECK</button></center></a>
</td>
</tr>
</table>
<br>
</table>
</div>
<br><br><br>
</body>
</html>