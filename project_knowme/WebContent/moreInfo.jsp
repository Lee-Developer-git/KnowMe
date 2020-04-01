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
<link rel="stylesheet" href="css/moreInfo.css?after" type="text/css">

<style>
.headerLeft {
	background-color: white;
}

.logo > div {
	color: black;
}

#section {
	padding-top: 70px;
	padding-bottom: 200px;
}

#section > div:first-child {
	font-size: 2em;
	font-weight: bold;
}

#section > div:last-child {
	width: 60%; 
	margin: 70px 0 0 20%; 
	font-size: 1.2em;
}

.slideChild {
	transition: all 1s;
	opacity: 0;
	transform: translateY(-50px);
}

.is-visible {
	opacity: 1;
	transform: translateY(0);
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
					<li class="menu-item"><a href="#info"><i><u>About</u></i></a></li>
					<li class="menu-item"><a href=""><i><u>Members</u></i></a></li>
					<li class="menu-item"><a href=""><i><u>Project</u></i></a></li>
					<li class="menu-item"><a href="contact.jsp"><i><u>Contact</u></i></a></li>
				</ul>
			</div>
		
			<div class="login_logout">
				<%
					if (userID == null) {
				%>
				<a href="login.jsp">Login</a>
				<%
					} else {
				%>
				<div class="dropdown">
					<i class="fas fa-user-circle" id="MyInfo" data-toggle="dropdown"></i>
					<ul class="dropdown-menu" role="menu" aria-labelledby="MyInfo" >
						<li><a href="myInfo.jsp">My Info</a></li>
						<li><a href="logoutAction.jsp">Logout</a></li>
					</ul>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>

	<div id="section" class="text-center">
		<div class="slideChild">저희 Know -me는</div>
		<div class="slideChild">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra varius nulla, ac bibendum arcu blandit nec. Nulla at commodo risus. Curabitur sagittis quam diam, venenatis porta tortor convallis non. Suspendisse placerat a nibh ac tempus. Etiam sem augue, interdum eu risus vitae, lobortis rhoncus metus. Vestibulum semper sapien a aliquam sollicitudin. Nunc erat diam, tempus eget egestas id, scelerisque at lorem.
		</div>
	</div>
	
	<div id="footer">
		<div class="footerLeft">
			<span>Know -me</span> 
			<span>Copyright ⓒ ⓒKnowMe Since 2020. All rights reserved.</span>
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
		var slideElements = $('.slideChild');
		
		function animateSlide() {
			slideElements.each(function (i) {
				setTimeout(function() {
					slideElements.eq(i).addClass('is-visible');
				}, 200 * (i + 1));
			});
		}
		
		animateSlide();
	});
	</script>
</body>
</html>