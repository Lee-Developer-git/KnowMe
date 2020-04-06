<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
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
	background-color: #333333;
	padding: 0;
	margin: 0;
}

.logo {
	color: white;
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
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		
		User user = new UserDAO().getUser(userID);
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
				<form method="post" action="updateAction.jsp?userID=<%= userID %>">
					<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2" style="background-color: #eeeeee; text-align: center;">내 정보 수정</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<label>이름</label>
									<input type="text" class="form-control" placeholder="이름을 입력해주세요!" name="userName" maxlength="50" value="<%= user.getUserName() %>">
								</td>
							</tr>
							<tr>
								<td>
									<label>좌우명</label>
									<textarea class="form-control" placeholder="좌우명을 입력해주세요!" name="userMotto" maxlength="100" style="height: 70px;"><%= user.getUserMotto() %></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label>분야</label>
									<textarea class="form-control" placeholder="분야를 입력해주세요!" name="userField" maxlength="100" style="height: 70px;"><%= user.getUserField() %></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label>나에 대한 소개</label>
									<textarea class="form-control" placeholder="나에 대해 간단히 소개해주세요!" name="userIntro" maxlength="400" style="height: 100px;"><%= user.getUserIntro() %></textarea>
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