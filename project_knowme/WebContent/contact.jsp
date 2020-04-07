<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/basicSettings.css?after" type="text/css">
<link rel="stylesheet" href="css/contact.css?after" type="text/css">

<style>
* {
	background-color: #333333;
	color: white;
}
#section {
	padding-bottom: 100px;
}

.slideChild, .slideName {
	transition: all 1s;
	opacity: 0;
	transform: translateY(-50px);
}

.is-visible {
	opacity: 1;
	transform: translateY(0);
}

#section > .icon > span > a {
	color: black; 
	font-size: 150px; 
	margin: 0 5%;
}
</style>
<title>KnowMe</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<div id="header">
		<div class="headerLeft">
			<div class="logo" onclick="location.href='main.jsp'">
				<div>Know</div>
				<div style="margin-top: -20px;">&nbsp&nbsp&nbsp&nbsp&nbsp-me</div>
			</div>
		</div>
		<div class="headerRight">
			<div class="menu">
				<ul class="navbar nav-menu text-right" style="padding-right: 10%;">
					<li class="menu-item"><a href="moreInfo.jsp"><i><u>About</u></i></a></li>
					<li class="menu-item"><a href="members.jsp"><i><u>Members</u></i></a></li>
					<li class="menu-item"><a href="projectList.jsp"><i><u>Project</u></i></a></li>
					<li class="menu-item"><a href="contact.jsp"><i><u>Contact</u></i></a></li>
				</ul>
			</div>
		
			<div class="login_logout">
				<%
					if (userID == null) {
				%>
				<a href="login.jsp" style="color: white;">Login</a>
				<%
					} else {
				%>
				<div class="dropdown">
					<i class="fas fa-user-circle" id="MyInfo" data-toggle="dropdown"></i>
					<ul class="dropdown-menu" role="menu" aria-labelledby="MyInfo" >
						<li><a href="myInfo.jsp" style="background-color: white; color: #333333;">My Info</a></li>
						<li><a href="logoutAction.jsp" style="background-color: white; color: #333333;">Logout</a></li>
					</ul>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>

	<div id="section" class="text-center">
		<div class="slideName">함께 걸어가고 싶다면</div>
		<div class="icon">
			<span class="slideChild"><a href="https://www.facebook.com/profile.php?id=100004529168789" target="_blank"><i class="fab fa-facebook" style="color: white;"></i></a></span>
			<span class="slideChild"><a href="https://mail.google.com/mail/u/0/#inbox?compose=new" style="color: white;"><i class="fas fa-envelope" style="color: white;"></i></a></span>
		</div>
	</div>
	
	<div id="footer">
		<div class="footerLeft">
			<span>Know -me</span> 
			<span>Copyright ⓒKnowMe Since 2020. All rights reserved.</span>
		</div>
		
		<div class="footerRight">
			<a href="https://github.com/FrontEndDevelop" target="_blank"> 
				<i class="fab fa-github"></i>
			</a> 
			<i class="fab fa-instagram"></i>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	$(document).ready(function() {
		var slideElements1 = $('.slideChild');
		var slideElements2 = $('.slideName');

		function animateSlide() {
			slideElements1.each(function (i) {
				setTimeout(function() {
					slideElements1.eq(i).addClass('is-visible');
				}, 200 * (i + 1));
			});
		}
		
		function animateName() {
			slideElements2.each(function (i) {
				setTimeout(function() {
					slideElements2.eq(i).addClass('is-visible');
				}, 200 * (i + 1));
			});
		}
		
		animateName();
		
		setTimeout(function() {
			animateSlide();
		}, 700);
	});
	</script>
</body>
</html>