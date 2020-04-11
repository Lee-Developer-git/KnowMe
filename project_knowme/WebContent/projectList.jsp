<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.Project" %>
<%@ page import="project.ProjectDAO" %>
<%@ page import="java.util.ArrayList" %>


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
<link
	href="https://fonts.googleapis.com/css?family=Merriweather&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/projectList.css?after" type="text/css">

<style>
</style>

<title>KnowMe</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int projectID = 0;
		
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
		<div class="headerCenter">
			<h2 style="font-size: 4.2em;">PROJECT</h2>
			<div class="headerDetail">
				<p style="font-size: 1.2em;">개발 능력의 향상을 위해</p>
				<p style="font-size: 1.2em;">팀 멤버들이 함께 만든 프로젝트 목록입니다.</p>
			</div>
		</div>
		<img src="img/testfile.png" class="img" />
	</div>

	<div id="section" class="center-block">
		<button class="writebtn btn btn-defalut" onclick="location.href='projectWrite.jsp'">write
			<i class="fas fa-feather-alt detailchild float-left"></i>
		</button>
		
		<div id="section-div1" style="width:100%;">
			<figure class="wrap" id="wrap1">
				<img src="img/p2.png" id="img1" class="project" />
				<figcaption class="text-left" id="figcaption1">
					<button class="snip1582" style="font-size: 4.5em; font-weight: 500;">PROJECT I</button>
					<button class="more-menu btn btn-default">Show More +</button>
				</figcaption>
			</figure>
		</div>
		
		<div id="section-div2" style="width:100%;">
			<figure class="wrap" id="wrap2">
				<img src="img/p1.png" id="img2" class="project" />
				<figcaption class="text-right float-right" id="figcaption2">
					<button class="snip1582" style="font-size: 4.5em; font-weight: 500;">PROJECT II</button><br/>
					<button class="more-menu btn btn-default">Show More +</button>
				</figcaption>
			</figure>
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
			<% 
				ProjectDAO projectDAO = new ProjectDAO();
				ArrayList<Project> list = projectDAO.getListB();
				for(int i = 0; i < list.size(); i++) {
			%>
			$('#wrap1').on('click', function(event) {
				location.href='projectDetail.jsp?projectID=<%= list.get(i).getProjectID() %>';
			});
			<%
				} for(int i = 0; i < list.size()-1; i++) {
			%>
			$('#wrap2').on('click', function(event) {
				location.href='projectDetail.jsp?projectID=<%= list.get(i).getProjectID() %>';
			});
			<%
				}
			%>
		});
	</script>
</body>
</html>