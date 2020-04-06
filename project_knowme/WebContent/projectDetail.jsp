<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.Project"%>
<%@ page import="project.projectDAO"%>
<%@ page import="heart.Heart"%>
<%@ page import="heart.HeartDAO"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="css/basicSettings.css?after"
	type="text/css">
<link rel="stylesheet" href="css/projectDetail.css?after"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Merriweather&display=swap"
	rel="stylesheet">

<style>
* {
	font-family: 'Merriweather', 'Noto Sans KR';
}

.headerLeft {
	background-color: white;
}

.logo>div {
	color: black;
}

#section, #wrap {
	width: 100%;
}

#section {
	height: 800px;
}

.section-header {
	padding-top: 110px;
	display: inline-block;
	width: 25%;
	height: 800px;
	border-left: 1.5px solid #c0c0c0;
	float: left;
	position: relative;
}

.project_name, #section-main {
	margin-left: 170px;
}

#detail2 {
	border-right: 1.5px solid #c0c0c0;
}

strong:nth-last-child(1) {
	font-size: 1.8em;
}

#section-main {
	width: 900px;
	height: 230px;
	padding-top: 0;
	position: absolute;
	top: 650px;
	z-index: 1;
	transform: translateY(-50px);
}

#section-main, #section-main strong, #section-main p {
	background-color: transparent;
	padding-left: 30px;
}

#section-main strong {
	font-size: 1.7em;
}

.detail p, #section-main p {
	font-size: 1.1em;
}

.detailBtn {
	margin-top: 150px;
	margin-left: 20px;
	font-size: 2.5em;
	border: 0;
	background-color: transparent;
	color: #333333;
}

.slide{
	transition: all 1s;
	opacity: 0;
	transform: translateY(-50px);
}

.is-visible{
	opacity: 1;
	transform: translateY(0);
}

</style>
<title>AboutMe</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		int projectID = 0;
		if (request.getParameter("projectID") != null) {
			projectID = Integer.parseInt(request.getParameter("projectID"));
		}

		if (projectID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'projectList.jsp'");
			script.println("</script>");
		}

		Project project = new projectDAO().getProject(projectID);
		Heart heart = new HeartDAO().getHeart(userID);
	%>
	<div id="header">
		<div class="headerLeft">
			<div class="logo" style="cursor: pointer; width: 22%;"
				onclick="location.href='main.jsp'">
				<div>Know</div>
				<div style="margin-top: -20px;">&nbsp&nbsp&nbsp&nbsp&nbsp-me</div>
			</div>
		</div>
		<div class="headerRight">
			<div class="menu">
				<ul class="navbar nav-menu text-right" style="padding-right: 10%;">
					<li class="menu-item"><a href="#info"><i><u>About</u></i></a></li>
					<li class="menu-item"><a href=""><i><u>Members</u></i></a></li>
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
				<div class="dropdown">
					<i class="fas fa-user-circle" id="MyInfo" data-toggle="dropdown"
						style="padding-top: 5px;"></i>
					<ul class="dropdown-menu" role="menu" aria-labelledby="MyInfo">
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
		<div id="wrap" class="text-center">
			<div class="project_name section-header">
				<strong class="slide"> PROJECT<br />FEATURE
				</strong>
			</div>
			<div id="detail1" class="detail section-header">
				<strong class="slide">NAME</strong>
				<p class="slide"><%=project.getProjectName()%></p>
				<br /> <strong class="slide">SETTINGS</strong>
				<p class="slide"><%=project.getProjectSettings()%></p>
			</div>
			<div id="detail2" class="detail section-header">
				<strong class="slide">GITHUB</strong>
				<p class="slide"><%=project.getProjectGithub()%></p>
				<br /> <strong class="slide">WRITTEN BY</strong>
				<p class="slide"><%=project.getUserID()%></p>
			</div>
		</div>
		<div id="section-main">
			<strong class="slide" style="font-size: 1.7em;">OVERVIEW</strong>
			<p class="slide"><%=project.getProjectOverview()%></p>
			<%
				if (userID != null) {
			%>
			<a id="unlike" class="detailBtn"
				href="heartSetAction.jsp?projectID=<%=project.getProjectID()%>">
				<i class="far fa-heart"></i>
			</a>
			<a id="like" class="detailBtn"><i class="fas fa-heart"></i></a>
			<button class="detailBtn glyphicon glyphicon-pencil"
				onclick="location.href='projectUpdate.jsp?projectID=<%=project.getProjectID()%>'"></button>
			<a class="detailBtn" href="projectDeleteAction.jsp?projectID=<%=project.getProjectID()%>">
				<i class="far fa-trash-alt"></i>
			</a>
			<%
				}
			%>
		</div>
	</div>

	<div id="footer">
		<div class="footerLeft">
			<span>Know -me</span> <span>Copyright ⓒ AboutMe Since 2020.
				All rights reserved.</span>
		</div>

		<div class="footerRight">
			<a href="https://github.com/FrontEndDevelop" target="_blank"> <i
				class="fab fa-github"></i>
			</a> <i class="fab fa-instagram"></i>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
		$(document).ready(function() {
			$('.navigation ul > li > a').click(function(e) {
				var scrollPosition = $(this.hash).offset().top - 53;

				$('html,body').animate({
					scrollTop : scrollPosition
				}, 500);
			});
		});
		$(document).ready(function() {
			var unlike = $('#unlike');

			$(unlike).on('click', function(event) {

			});
		})
		
		$(document).ready(function() {
			var slideElements = $('.slide');
			
			function animateSlide() {
				slideElements.each(function(i) {
					setTimeout(function() {
						slideElements.eq(i).addClass('is-visible');
					}, 100 * (i + 1));
				});
			}

			animateSlide();
		});
	</script>
</body>
</html>