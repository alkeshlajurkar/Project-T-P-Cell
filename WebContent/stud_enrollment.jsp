<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wd.org/TR/html4/loose.dtd">
<html>
<head><script data-ad-client="ca-pub-8902482629538552" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script></head>
<title>TPCELL/STUDENT ENROLLMENT</title>
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
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/hom.svg" style="width:60px"></i>
    <p>HOME</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i></i>
    <p>ABOUT</p>
  </a>
  <a href="#team" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/group.svg"></i>
    <p>TEAM</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/folder.svg"></i>
    <p>PROJECTS</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/phonebook.svg"></i>
    <p>CONTACT</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i>
    <p>LOGIN</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/speechbubble.svg"></i>
    <p>REVIEW</p>
  </a>
  <a href="index.jsp" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/computer.svg"></i>
    <p>ADMIN</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="wd-top wd-hide-large wd-hide-medium" id="myNavbar">
  <div class="wd-bar wd-black wd-opacity wd-hover-opacity-off wd-center wd-small">
    <a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">HOME</a>
    <a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">ABOUT</a>
	<a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">TEAM</a>
    <a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">PROJECTS</a>
    <a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">CONTACT</a>
	<a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">LOGIN</a>
	<a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">REVIEW</a>
	<a href="index.jsp" class="wd-bar-item wd-button" style="width:25% !important">ADMIN</a>
  </div>
</div>


<!-- Page Content -->
<div class="wd-padding-large" id="main">
    <!-- Header/Home -->
  <header class="wd-container wd-padding-32 wd-center wd-black wd-opacity wd-hover-opacity-off" id="home">
  <br><br>
     <h1 style="font-size:6vw">Training & Placement Cell</h1>
    <h3 style="font-size:2vw"><p>Prof. Ram Meghe Institute of Technology and Research Badnera-Amravati</p></h3>
  </header>
 
<!-- Request  Section -->
  <div class="wd-padding-64 wd-content wd-text-grey">
    <h2 class="wd-text-light-grey">Training Enrollment</h2>
    <hr style="width:200px" class="wd-opacity">

    <p>Fill Out the Form to Enroll for Training:</p>

    <form action="studtrainingenroll_action.jsp" target="_blank" autocomplete="off">
    <p>Student ID:</p>
      <p><input class="wd-input wd-padding-16" type="text" placeholder="Student ID" required name="id"></p>
       <p>First Name:</p>
       <p><input class="wd-input wd-padding-16" type="text" placeholder="First Name" required name="fname"></p>
        <p>Last Name:</p>
        <p><input class="wd-input wd-padding-16" type="text" placeholder="Last Name" required name="lname"></p>
        <p>Mobile No.:</p>
         <p><input class="wd-input wd-padding-16" type="int" placeholder="Mobile Number" required name="mob"></p>
      <p>Email:</p>
      <p><input class="wd-input wd-padding-16" type="text" placeholder="Email" required name="email"></p>
      <p>Select Branch: </p>
      <p><select name="website" class="wd-input wd-padding-16"required>
    <option>CSE</option>
	<option>IT</option>
	<option>ENTC</option>
	<option>ME</option>
	<option>CIVIL</option>
	</select></p>
	<p>Select Year:</p>
	<p><select name="website" class="wd-input wd-padding-16"required>
    <option>First Year</option>
	<option>Second Year</option>
	<option>Third Year</option>
	<option>Final Year</option>
	</select></p>
	<p>Select Training Name:</p>
	<p><select name="website" class="wd-input wd-padding-16"required>
    <option>Advance DBMS Coursse</option>
	<option>Compiler Design</option>
	<option>Web Development</option>
	<option>Programming with Python</option>
	<option>Internet of Things</option>
	</select></p>
     <p>
        <button class="wd-button wd-light-grey wd-padding-large" type="submit">
          <i><img src="wdimages/compass.svg" style="width:20px"></i> ENROLL
        </button>
      </p>
    </form>
  <!-- End Request Section -->
  </div>
  </div>
