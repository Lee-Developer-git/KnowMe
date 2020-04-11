<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="project.ProjectDAO" %>
<%@ page import="project.Project" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/basicSettings.css?after" type="text/css">
<link rel="stylesheet" href="css/myInfo.css?after" type="text/css">

<title>KnowMe</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
				
		User user = new UserDAO().getUser(userID);
		
		ProjectDAO project = new ProjectDAO();
		
		ArrayList<Project> list = project.getListA(userID);
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
				<a href="login.jsp">Login</a>
				<%
					} else {
				%>
				<div class="dropdown" style="width: 200px;">
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
	

	<div id="section">
		<div class="sectionLeft">
			<img src="img/billie.jpg" class="slideName">
			<div class="info">
				<div class="name slideName"><%= user.getUserName() %></div>
				<div class="slideName"><%= user.getUserField() %></div>
				<div class="slideName"><%= user.getUserMotto() %></div>
			</div>
		</div>
		
		<div class="sectionRight">
			<div class="selfIntroduce">
				<div class="intro">
					<div class="slideChild">INTRODUCING</div>
					<div class="slideChild"><%= user.getUserIntro() %></div>
				</div>
				
				<div class="projects">
					<div class="slideChild">PROJECTS</div>
					
					<a href="project.jsp?pageNum=0" class="slideChild projectsA">...</a>
				</div>
				
				<div class="like">
					<div class="slideChild">LIKED PROJECTS</div>
					
					<a href="project.jsp?pageNum=1" class="slideChild likeA">...</a>
				</div>
				
				<button class="slideChild glyphicon glyphicon-pencil text-right" onclick="location.href='update.jsp'"></button>
			</div>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	$(document).ready(function() {
		if(<%= list.size() %> == 1) {
			var jspContent = "<%= list.get(0).getProjectName() %>";		
			
			var content = $('<div class="slideChild">' + jspContent + '</div>');
			$('.projectsA').before(content);
		}
		
		else if(<%= list.size() %> >= 2) {
			var jspContent1 = "<%= list.get(0).getProjectName() %>";		
			var jspContent2 = "<%= list.get(1).getProjectName() %>";		

			var content = $('<div class="slideChild">' + jspContent1 + '</div>');
			$('.projectsA').before(content);
			
			var content = $('<div class="slideChild">' + jspContent2 + '</div>');
			$('.projectsA').before(content);
		}
	});
	</script>
	
	<script>
	$(document).ready(function() {
		if(<%= list.size() %> == 1) {
			var jspContent = "<%= list.get(0).getProjectName() %>";		
			
			var content = $('<div class="slideChild">' + jspContent + '</div>');
			$('.likeA').before(content);
		}
		
		else if(<%= list.size() %> >= 2) {
			var jspContent1 = "<%= list.get(0).getProjectName() %>";		
			var jspContent2 = "<%= list.get(1).getProjectName() %>";		

			var content = $('<div class="slideChild">' + jspContent1 + '</div>');
			$('.likeA').before(content);
			
			var content = $('<div class="slideChild">' + jspContent2 + '</div>');
			$('.likeA').before(content);
		}
	});
	</script>
	
	<script>
	$(document).ready(function() {
		var slideElements = $('.slideChild');
		var slideName = $('.slideName');
		
		function animateName() {
			slideName.each(function (i) {
				setTimeout(function() {
					slideName.eq(i).addClass('is-visible1');
				}, 200 * (i + 1));
			});
		}
		
		function animateSlide() {
			slideElements.each(function (i) {
				setTimeout(function() {
					slideElements.eq(i).addClass('is-visible2');
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