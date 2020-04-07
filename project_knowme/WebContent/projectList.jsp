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
<link rel="stylesheet" href="" type="text/css">

<style>
@import url(https://fonts.googleapis.com/css?family=Raleway);
* {
	font-family: 'Merriweather', 'Noto Sans KR';
	background-color: white;
}
*.focus {
	outline: none;
}
body {
	min-width: 1300px;
}
.btn:hover, a, a:hover {
	color: black;
	text-decoration: none;
}
li {
	list-style: none;
}
#header {
	width: 100%;
	height: 660px;
}
.headerLeft {
	display: inline-block;
	width: 40%;
	height: 100%;
	background-color: white;
	padding: 0;
	margin: 0;
}
.logo {
	color: white;
	padding: 5% 0;
	margin-left: 25%;
	font-size: 2em;
	font-weight: bold;
	background-color: white;
}
.logo > div {
	color: black;
}
.headerRight {
	display: inline-block;
	float: right;
	width: 60%;
	height: 100%;
	margin: 0;
	padding: 0;
}
.menu {
	width: 75%;
	padding-top: 5%;
	display: inline-block;
}
.menu ul .menu-item {
	display: inline-block;
	margin: 10px 20px;
	font-size: 1.2em;
	font-weight: bold;
}
.login_logout {
	width: 8%;
	display: inline-block;
}
.login_logout>a, .login_logout>.dropdown>i {
	display: inline-block;
	margin: 15px 0;
	font-weight: bold;
	font-size: 1.2em;
	margin-right: 10%;
}
.login_logout>.dropdown>i {
	font-size: 27px;
}
.login_logout>.dropdown>i:hover {
	cursor: pointer;
}
.login_logout>.dropdown>ul {
	margin-top: 10px;
}
.headerCenter {
	position: relative;
	width: 100%;
	height: 430px;
	background-color: transparent;
	z-index: 1;
	margin-top: -470px;
}
.headerCenter h2, .headerDetail{
	padding-top: 100px;
	padding-left: 180px;
	transform: translateY(-50px);
}
.headerCenter h2{
	color: black;
}
.headerDetail {
	color: black;
	width: 100%;
	height: 280px;
	background-color: #BDBDBF;
	position: absolute;
	animation: bigCenter 1s linear 0s 1 normal none running;
}
.headerDetail h2, .headerDetail p {
	background-color: transparent;
}
.img {
	position: absolute;
	float: right;
	width: 450px;
	background-color: transparent;
	z-index: 2;
	margin-top: -38%;
	margin-left: 800px;
}
.headerDetail p, .img, .headerCenter h2 {
	animation: opacity 1.2s linear 0s 1 none running;
}
.headerDetail p{
	transform: translateY(-50px);
}
/*animation*/
@keyframes bigCenter {
	0%{
	width: 0%;
	background-color: transparent;
	}
	50%{
	background-color: transparent;
	}
	100%{
	width: 100%;
	background-color: #BDBDBF;
	}
}
@keyframes opacity {
	0% {
	opacity: 0;
	}
	90%{
	opacity: 0;
	}
	100%{
	opacity:1;
	}
}
/*section*/
#section {
	margin-top: 50px;
	width: 100%;
	height: 1100px;
}
.wrap {
	height: 335px;
}
.wrap * {
	font-family: 'BenchNine', Arial, sans-serif;
}
.wrap:hover {
	cursor: pointer;
}
#wrap1{
	margin-bottom: 80px;
}
.project {
	width: 900px;
	margin-bottom: -100px;
}
#img1 {
	float: right;
}
#img2, #figcaption2 {
	float: left;
}
.wrap {
	padding: 0 auto;
	margin-bottom: 5px;
}
/*figcaption*/
.wrap figcaption {
	display: inline;
	position: relative;
	width: 100%;
	margin: 0 auto;
	background-color: transparent;
}
#figcaption1 {
	top: 50px;
}
#figcaption2 {
	top: -180px;
}
.snip1582 {
	border: none;
	font-size: 1em;
	font-size: 22px;
	line-height: 1em;
	margin: 15px 40px;
	outline: none;
	padding: 10px;
	font-weight: 700;
}
.snip1582:before, .snip1582:after {
	transition: all 0.25s;
	border: 0 solid transparent;
	content: "";
	height: 24px;
	position: absolute;
	width: 24px;
}
.snip1582:before {
	border-color: #615d5d;
	border-top-width: 3.2px;
	left: 0px;
	top: -5px;
}
.snip1582:after {
	border-bottom-width: 3.2px;
	border-color: #615d5d;
	bottom: -5px;
	right: 0px;
}
.wrap:hover .snip1582:before, .wrap:hover .snip1582:after {
	height: 100%;
	width: 100%;
	border-color: #615d5d;
}
.wrap:hover .project {
	opacity: 0.8;
}
.wrap figcaption, figcaption>p, figcaption>button {
	color: black;
	margin: 0;
	position: relative;
	background-color: transparent;
}
figcaption p {
	padding: 0 40px 0 40px;
}
.more-menu {
	font-size: 1.2em;
	background-color: #333333;
	color: white;
	width: 130px; height: 45px;
	margin: 40px;
	top: -10px;
}
/*detail*/
.detail {
	display: none;
	width: 100%;
	height: 530px;
	background-color: #EBEBEB;
	margin-bottom: 80px;
}
.detail * {
	background-color: #EBEBEB;
}
.detailOverview {
	margin-left: 14%;
}
.detailWrap {
	margin-left: 6%;
	margin-top: 100px;
}
.project-detail {
	display: inline;
	float: left;
	width: 27%;
	position: relative;
}
.project-detail p, .detailOverview p {
	font-size: 1.1em;
}
.summary {
	margin-right: 6%;
}
strong {
	font-size: 1.15em;
}
.writebtn, .detailchild{
	background-color: #353C42;
	font-size: 35px;
	color: white;
	border: 0;
}
.writebtn{
	margin-bottom: 40px;
	transform: translateX(-115px);
	transition: all 0.5s;
	font-style: italic;
}
.detailchild{
	margin: 0 15px 0 10px;
}
.writebtn:hover{
	transform: translateX(-10px);
	color: white;
}
/*footer*/
#footer {
	width: 100%;
	height: 150px;
	background: black;
	color: white;
}
.footerLeft {
	display: inline-block;
	width: 70%;
	font-size: 2em;
	background-color: black;
	padding-top: 59px;
	padding-left: 15%;
}
.footerLeft>span {
	background-color: black;
}
.footerLeft>span:first-child {
	font-weight: bold;
}
.footerLeft>span:last-child {
	margin-left: 2%;
	font-size: 0.7em;
}
.footerRight {
	float: right;
	padding: 59px 15% 10px 0;
	background-color: black;
}
.footerRight>a>i {
	color: white;
	background-color: black;
	font-size: 27px;
}
.footerRight>i {
	font-size: 27px;
	background-color: black;
	margin-left: 15px;
}
</style>

<title>KnowMe</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
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
					<button class="snip1582" style="font-size: 4.5em; font-weight: 500;">PROJECT II</button>
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
				ArrayList<Project> list = projectDAO.getList(userID);
				for(int i = 0; i < list.size(); i++) {
			%>
			$('#wrap1').on('click', function(event) {
				location.href="projectDetail.jsp?projectID=<%= list.get(i).getProjectID() %>";
			});
			<%
				} for(int i = 0; i < list.size()-1; i++) {
			%>
			$('#wrap2').on('click', function(event) {
				location.href="projectDetail.jsp?projectID=<%= list.get(i).getProjectID() %>";
			});
			<%
				}
			%>
		});
	</script>
</body>
</html>