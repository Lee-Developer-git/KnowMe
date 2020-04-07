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
<link rel="stylesheet" href="css/join.css?after" type="text/css">

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

	<div id="section" style="margin: 80px 0;">
		<div class="joinText text-center">회원가입</div>
		<div id="index">
      		<form name="f" role="form" id="join" method="post" action="joinAction.jsp" onsubmit="return checkValue();">
      			<div class="form-group">
		          	<input type="text" id="userName" name="userName" placeholder="이름을 입력해주세요">
		        </div>
		        <div class="form-group">
	          		<input type="text" id="userID" name="userID" placeholder="아이디를 입력해주세요">
		        </div>
		        <div class="form-group">
		          	<input type="password" id="userPassword" name="userPassword" placeholder="비밀번호를 입력해주세요">
		        </div>
		        <div class="form-group">
		          	<input type="password" id="userPasswordCheck" name="userPasswordCheck" placeholder="비밀번호를 한 번 더 입력해 주세요">
		        </div>
		        <div class="form-group text-right">
          			<button type="submit" name="submit" id="join-submit" class="btn">회원가입</button>
        		</div>
		    </form>
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
</body>
</html>