<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>

    
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap" rel="stylesheet" >
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/members.css?after" type="text/css">
<link rel="stylesheet" href="css/basicSettings.css?after" type="text/css">


<title>Members List</title>
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

	
	<div id="section" style="padding-bottom: 150px;"> 
		
			<div id="faceLayer_inner">
				<div id="face_content">
					<a href="myInfo.jsp"><img class="faceImages" src = "img/jaehyuk.png"></a>
					<a href="myInfo.jsp"><img class="faceImages" src = "img/seulgi.png"></a>
					<a href="myInfo.jsp"><img class="faceImages" src = "img/miji.png"></a>
					<br>
					<br>
				</div>
				<div id="face_content">	
					<div id="member_content">
						Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:

“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”
The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.

The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.
Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:

				
					</div>
					<div id="member_content">
						Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:

“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”
The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.

The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.
					</div>
					<div id="member_content">
						Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:

“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”
The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.

The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.
					</div>
				</div>
			
			</div>
		
		<br>
		<br>
	</div>


	<div id="footer">
		<div class="footerLeft">
			<span>About Me.</span> 
			<span>Copyright ⓒ AboutMe Since 2020. All rights reserved.</span>
		</div>
		
		<div class="footerRight">
			<a href="https://github.com/FrontEndDevelop" target="_blank"> 
				<i class="fab fa-github"></i>
			</a> 
			<i class="fab fa-instagram"></i>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://malsup.github.com/jquery.cycle2.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	/*$(document).ready(function() {
		var slideElements = $('#face_content');

		function animateSlide() {
			slideElements.each(function (i) {
				setTimeout(function() {
					slideElements.eq(i).addClass('is-visible');
				}, 200 * (i + 1));
			});
		}
		
		animateSlide();
	});*/
	</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
		$(document).ready(function(){
			$('.navigation ul > li > a').click(function(e){
				var scrollPosition = $(this.hash).offset().top - 53;
				
		     	$('html,body').animate({
		     		scrollTop: scrollPosition
		     	}, 500);
		   	});
		});
	</script>

</body>
</html>