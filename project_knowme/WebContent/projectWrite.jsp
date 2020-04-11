<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="project.Project" %>
<%@ page import="project.ProjectDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/writeupdate.css?after" type="text/css">

<title>Know Me</title>

<style>
@import url(https://fonts.googleapis.com/css?family=Raleway);
* {
	font-family: 'Merriweather', 'Noto Sans KR';
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
	height: 130px;
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
	color: black;
	padding: 5% 0;
	margin-left: 25%;
	font-size: 2em;
	font-weight: bold;
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
	display:inline-block;
}
.login_logout > a, .login_logout > .dropdown > i {
	display: inline-block;
	margin: 15px 0;
	font-weight: bold;
	font-size: 1.2em;
	margin-right: 10%;
}
.login_logout > .dropdown > i{
	font-size: 27px;
}
.login_logout > .dropdown > i:hover {
	cursor:pointer;
}
.login_logout > .dropdown > ul {
	margin-top: 10px;
}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		
		Project project = new Project();
	%>
	<div id="header">
		<div class="headerLeft">
			<div class="logo" style="cursor: pointer; width: 22%;" onclick="location.href='main.jsp'">
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
					<i class="fas fa-user-circle" id="MyInfo" data-toggle="dropdown" style="padding-top: 5px;"></i>
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
	
	<div id="section" style="margin-top: 70px; margin-bottom: 70px;">
		<div class="container">
			<div class="row">
				<form method="post" action="projectWriteAction.jsp">
					<table class="table" style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2" style="background-color: #eeeeee; text-align: center; font-size:1.4em;">프로젝트 정보</th>
							</tr>
						</thead>
						<tbody style="width:20%;">
							<tr>
								<td>
									<label>프로젝트 명</label>
								</td>
								<td>
									<input type="text" class="form-control" placeholder="프로젝트명을 입력해주세요!" name="projectName" maxlength="50">
								</td>
							</tr>
							<tr>
								<td>
									<label>Overview</label>
								</td>
								<td>
									<textarea class="form-control" placeholder="프로젝트의 개요를 입력해주세요!" name="projectIntro" maxlength="200" style="height: 70px;"></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label>Setting</label>
								</td>
								<td>
									<textarea class="form-control" placeholder="개발환경을 입력해주세요!" name="projectSettings" maxlength="100" style="height: 70px;"></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label>Github address</label>
								</td>
								<td>
									<textarea class="form-control" placeholder="프로젝트의 깃헙 주소를 입력해주세요!" name="projectGithub" maxlength="100" style="height: 70px;"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="글수정" style="background-color: #333333; color: white;">	
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>