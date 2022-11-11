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
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.wd.org/TR/html4/loose.dtd">
<html>
<head><script data-ad-client="ca-pub-8902482629538552" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script></head>
<title>TRPCELL/index</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/fontawesome.css">
<link rel="stylesheet" href="css/wd1.css">
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
  <a href="#" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/hom.svg" style="width:60px"></i>
    <p>HOME</p>
  </a>
  <a href="#about" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i></i>
    <p>ABOUT</p>
  </a>
  <a href="#alltraining" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/folder.svg"></i>
    <p>ALL TRAININGS</p>
  </a>
  <a href="#alljob" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/group.svg"></i>
    <p>ALL JOBS</p>
  </a>
  <a href="#login" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/user.svg"></i>
    <p>LOGIN</p>
  </a>
  <a href="#review" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/speechbubble.svg"></i>
    <p>REVIEW</p>
  </a>
  <a href="#contact" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/phonebook.svg"></i>
    <p>CONTACT</p>
  </a>
  <a href="#admin" class="wd-bar-item wd-button wd-padding-large wd-white">
    <i class="wd-xxlarge"><img src="wdimages/computer.svg"></i>
    <p>ADMIN</p>
  </a>
</nav>


<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="wd-top wd-hide-large wd-hide-medium" id="myNavbar">
  <div class="wd-bar wd-black wd-opacity wd-hover-opacity-off wd-center wd-small">
    <a href="#" class="wd-bar-item wd-button" style="width:25% !important">HOME</a>
    <a href="#about" class="wd-bar-item wd-button" style="width:25% !important">ABOUT</a>
	<a href="#alltraining" class="wd-bar-item wd-button" style="width:25% !important">ALL TRAININGS</a>
	<a href="#alljob" class="wd-bar-item wd-button" style="width:25% !important">ALL JOBS</a>
	<a href="#login" class="wd-bar-item wd-button" style="width:25% !important">LOGIN</a>
	<a href="#review" class="wd-bar-item wd-button" style="width:25% !important">REVIEW</a>
	<a href="#contact" class="wd-bar-item wd-button" style="width:25% !important">CONTACT</a>
	<a href="#admin" class="wd-bar-item wd-button" style="width:25% !important">ADMIN</a>
  </div>
</div>


<!-- Page Content -->
<div class="wd-padding-large" id="main">
  <!-- Header/Home -->
  <header class="wd-container wd-padding-32 wd-center wd-black wd-opacity wd-hover-opacity-off" id="home">
  <br><br>
    <h1 style="font-size:6vw">Training & Placement Cell</h1>
    <h3 style="font-size:2vw"><p>Prof. Ram Meghe Institute of Technology and Research Badnera-Amravati</p></h3>
    <img src="wdimages/hero_2.jpg" alt="boy" class="wd-image" width="992" height="1108">
  </header>


  <!-- About Section -->
  <div class="wd-content wd-justify wd-text-grey wd-padding-64" id="about">
    <h2 class="wd-text-light-grey">About Us</h2>
    <hr style="width:200px" class="wd-opacity">
    <p>Training and placement cell is to guide students to choose right career and to give knowledge,skiill and aptitude and meet the manpower requirements of the industry.</p>
    <p>The industry is always non the lookout for students who are vibrant,energetic individuals and ready to acxcept challengess,attentive,aggood academic background,fast learners,open to learniing even at work and more importantly,good communication skills.this activity focuses on the personality development to make the student reliable,with a positive attitude and right decision making.</p>
    <p>So, Best of Luck Students....!
    
 <!-- All Trainings Section -->
 <div class="wd-content wd-justify wd-text-grey wd-padding-64" id="alltraining">
 <h2 class="wd-text-light-grey">All Trainings</h2>
 <hr style="width:200px" class="wd-opacity">
<div style="overflow-x:auto;">
<table border="2">
<tr>
<td><b>Training Title</b></td>
<td><b>Subject</b></td>
<td><b>Training Description</b></td>
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
<td><%=resultSet.getString("training_desc") %></td>
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
 
 
 <!-- All Jobs Section -->
 <div class="wd-content wd-justify wd-text-grey wd-padding-64" id="alljob">
 <h2 class="wd-text-light-grey">All Jobs</h2>
 <hr style="width:200px" class="wd-opacity">
<div style="overflow-x:auto;">
<table border="2">
<tr>
<td><b>Job Title</b></td>
<td><b>Company</b></td>
<td><b>Job Description</b></td>
<td><b>Enroll</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from all_job";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("job_title") %></td>
<td><%=resultSet.getString("company") %></td>
<td><%=resultSet.getString("job_desc") %></td>
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
 
   <!-- Login/Registration Section -->
  <div class="wd-padding-64 wd-content" id="login">
    <h2 class="wd-text-light-grey">Login/Registration</h2>
    <hr style="width:200px" class="wd-opacity">

   <!-- Login/Registration Section -->
    <div class="wd-row-padding" style="margin:0 -16px">
      <div class="wd-half wd-margin-bottom">
	   <form action="regis_action.jsp" target="_blank" autocomplete="off">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Registration</li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="Student ID" required name="id"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="First Name" required name="fname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="text" placeholder="Last Name" required name="lname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="email" placeholder="Email" required name="uname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="password" placeholder="Password" required name="password"></p></li>
          <p><input type="checkbox" onclick="myFunction()">Show Password</p>
          <li class="wd-light-grey wd-padding-24">
            <p>
        <button class="wd-button wd-white wd-padding-large wd-hover-black" type="submit">
          <i><img src="wdimages/compass.svg" style="width:15px"></i> Sign Up
        </button>
      </p></li>
        </ul>
		</form>
      </div>
	  
	  <div class="wd-half wd-margin-bottom">
	  <form action="login_action.jsp" target="_blank" autocomplete="off">
        <ul class="wd-ul wd-white wd-center  wd-hover-opacity-off">
          <li class="wd-dark-grey wd-xlarge wd-padding-32">Login</li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="email" placeholder="Username" required name="uname"></p></li>
          <li class="wd-padding-16"><p><input class="wd-input wd-padding-16" type="password" id="password" value="" placeholder="Password" required name=password"></p> </li>
		  <p><input type="checkbox" onclick="myFunction()">Show Password</p>
		  <li class="wd-light-grey wd-padding-24">
            
			<p>
        <button class="wd-button wd-white wd-padding-large wd-hover-black" type="submit">
          <i><img src="wdimages/compass.svg" style="width:15px"></i> Sign In
        </button><% if (request.getAttribute("errorMessage") != null) {
        out.println("<h5>" + request.getAttribute("errorMessage") + "</h5>");
}%>
      </p></li>
        </ul>
		</form>
      </div>
	  
<!-- End Login/Registration Section -->
    </div>
 
 
 <!-- Suggestion/Review Section -->
  <div class="wd-padding-64 wd-content wd-text-grey" id="review">
    <h2 class="wd-text-light-grey">Suggestion/Review</h2>
    <hr style="width:200px" class="wd-opacity">

    <form action="work_action.jsp" target="_blank" autocomplete="off">
      <p><input class="wd-input wd-padding-16" id="fname" type="text" placeholder="Name" required name="fname"></p>
      <p><input class="wd-input wd-padding-16" id="fname" type="text" placeholder="College Name/Work Place Name" required name="address"></p>
      <p><textarea  class="wd-input wd-padding-16" id="subject" name="review" placeholder="Write something.."required style="height:200px"></textarea></p>
      <p>
        <button class="wd-button wd-light-grey wd-padding-large" type="submit">
          <i><img src="wdimages/compass.svg" style="width:20px"></i> SEND MESSAGE
        </button>
      </p>
    </form>
  <!-- End Review Section -->
  </div>
 
 <!-- Contact Section -->
  <div class="wd-padding-64 wd-content wd-text-grey" id="contact">
    <h2 class="wd-text-light-grey">Contact Us</h2>
    <hr style="width:200px" class="wd-opacity">

    <div class="wd-section">
      <p><i class="wd-text-white wd-xxlarge wd-margin-right"><img src="wdimages/maps.svg" style="max-height:6vh"></i>Prof. Ram Meghe Institute of Technology and Research Badnera Amravati</p>
      <p><i class="wd-text-white wd-xxlarge wd-margin-right"><img src="wdimages/phone.svg" style="max-height:6vh"></i> Mobile. No.:9370193470/8390956095/p>
      <p><i class="wd-text-white wd-xxlarge wd-margin-right"><img src="wdimages/email (1).svg" style="max-height:6vh"> </i> Email:alkeshlajurkar@gmail.com</p>
    <p>Lets get in touch. Send a message:</p>

    <form action="contact_action.jsp" target="_blank" autocomplete="off">
      <p><input class="wd-input wd-padding-16" id="fname" type="text" placeholder="Name" required name="fname"></p>
      <p><input class="wd-input wd-padding-16" id="lname" type="email" placeholder="Email" required name="email"></p>
      <p><textarea  class="wd-input wd-padding-16" id="subject" name="subject" placeholder="Write something.."required style="height:200px"></textarea></p>
      <p>
        <button class="wd-button wd-light-grey wd-padding-large" type="submit">
          <i><img src="wdimages/compass.svg" style="width:20px"></i> SEND MESSAGE
        </button>
      </p>
    </form>
  <!-- End Contact Section -->
  </div>
  
   
  <!-- Admin Section -->
  <div class="wd-padding-64 wd-content wd-text-grey" id="admin">
    <h2 class="wd-text-light-grey">Admin Login</h2>
    <hr style="width:200px" class="wd-opacity">

    <form action="admin_action.jsp" target="_blank" autocomplete="off">
      <p><input class="wd-input_a wd-padding-16" id="fname" type="email" placeholder="Username" required name="uname"></p>
      <p><input class="wd-input_a wd-padding-16" id="lname" type="password" placeholder="Password" required name="password"></p>
     <p>
        <button class="wd-button wd-light-grey wd-padding-large" type="submit">
          <i><img src="wdimages/compass.svg" style="width:20px"></i> Login
        </button>
      </p>
    </form>
  <!-- End Admin Section -->
  </div>
 
 
    <!-- Footer -->
  <footer class="wd-content wd-padding-64 wd-text-grey wd-xlarge">
    <a href="https://m.facebook.com/webdominatorin-110505040587898/?ref=bookmarks&mt_nav=0"><i class="wd-hover-opacity"><img src="wdimages/facebook.svg" style="width:40px"></i></a>
    <i class="wd-hover-opacity"><img src="wdimages/instagram.svg" style="width:40px"></i>
    <i class="wd-hover-opacity"><img src="wdimages/twitter.svg" style="width:40px"></i>
    <a href="https://www.youtube.com/channel/UCRrU7e4xhx9ttLQFHOYmULw?view_as=subscriber"><i class="wd-hover-opacity"><img src="wdimages/youtube.svg" style="width:55px"></i></a>
    <p class="wd-medium">Developed by <a href="http://webdominator.in/Web/" target="_blank" class="wd-hover-text-green">Webdominator</a></p>
    <p class="wd-medium">&copy Copyright-2020 All Right Reserved, Developed by ALKESH</p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>


</body>
<script>
function myFunction() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>
</html>
