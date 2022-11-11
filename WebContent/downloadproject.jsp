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
<title>Webdominator/Projects</title>
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
    <h1 style="font-size:8vw">Webdominator</h1>
    <h3 style="font-size:2vw"><p>We Create Awesome Web</p></h3>
    <img src="wdimages/hero_2.jpg" alt="boy" class="wd-image" width="992" height="1108">
  </header>
 
 
  <!-- All Trainings Section -->
 <div class="wd-content wd-justify wd-text-grey wd-padding-64" id="about">
 <h2 class="wd-text-light-grey">All Trainings</h2>
 <hr style="width:200px" class="wd-opacity">
<div style="overflow-x:auto;">
<table border="2">
<tr>
<td><b>Training Title</b></td>
<td><b>Subject</b></td>
<td><b>Due Date</b></td>
<td><b>Amount</b></td>
<td><b>Enroll</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from all_training";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("training_title") %></td>
<td><%=resultSet.getString("subject") %></td>
<td><%=resultSet.getString("due_date") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><a href="#login"><button class="wd-button wd-white wd-padding-large wd-hover-black">Enroll</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<br><br><br>
   
   
 
 
 
 
 
 
 
  <!-- Projects Section -->
  <div class="wd-padding-64 wd-content" id="photos">
    <h2 class="wd-text-light-grey">Downloads</h2>
    <hr style="width:200px" class="wd-opacity">

   <!-- Grid for project tables -->
    <h3 class="wd-padding-16 wd-text-light-grey">Our Templates</h3>
    <div class="wd-row-padding" style="margin:0 -16px">
      <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Hair Salon</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/hair salon.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Hair Salon/Hair Salon.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	   <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Steak House</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/Capture.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Steak House/Steak-House.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	   <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Coffee Shop</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/coffee.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="coffee/coffee.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	   <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Wedding Photography</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/web.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Photography/Photography.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	   <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Desiclick</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/Desiclick.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="DesiClick Website/DesiClick.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	   <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Vighanaharta Travels</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/travel.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Vighnaharta travels/travel.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
	  
	  <div class="wd-half wd-margin-bottom">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Dogcare</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/dogcare.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Dogcare/dogcare.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>

      <div class="wd-half">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Freshfood Shop</li>
          <li class="wd-padding-16"><header class="wd-container wd-padding-16 wd-center " id="home">
    <img src="wdimages/freshfood.PNG" alt="boy" class="wd-image" width="992" height="1108">
  </header></li>
          <li class="wd-light-grey wd-padding-24">
			<a href="Fresh Food/freshfood.zip" download><button class="wd-button wd-white wd-padding-large wd-hover-black">Download</button></a>
          </li>
        </ul>
      </div>
    <!-- End Grid/Pricing tables -->
    </div>
   <!-- Footer -->
  <footer class="wd-content wd-padding-64 wd-text-grey wd-xlarge">
    <i class="wd-hover-opacity"><img src="wdimages/facebook.svg" style="width:40px"></i>
    <i class="wd-hover-opacity"><img src="wdimages/instagram.svg" style="width:40px"></i>
    <i class="wd-hover-opacity"><img src="wdimages/twitter.svg" style="width:40px"></i>
    <a href="https://www.youtube.com/channel/UCRrU7e4xhx9ttLQFHOYmULw?view_as=subscriber"><i class="wd-hover-opacity"><img src="wdimages/youtube.svg" style="width:55px"></i></a>
    <p class="wd-medium">Developed by <a href="http://webdominator.in/Web/" target="_blank" class="wd-hover-text-green">Webdominator</a></p>
    <p class="wd-medium">&copy Copyright-2020 All Right Reserved, Developed by WEBDOMINATOR</p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
