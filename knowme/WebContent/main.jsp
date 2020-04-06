<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nunito:300&display=swap" rel="stylesheet" >
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/basicSettings.css?after" type="text/css">
<link rel="stylesheet" href="css/main.css?after" type="text/css">
<style>
body {
	min-width: 1300px;	
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
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<div id="header">
		<div class="headerLeft">
			<div class="logo" onclick="location.href='main.jsp'">
				<div>Know</div>
				<div style="margin-top: -20px;">&nbsp&nbsp&nbsp&nbsp&nbsp-me</div>
			</div>
			
			<div class="image">
				<img src="img/billie.jpg">
			</div>
		</div>
		<div class="headerRight">
			<div class="menu">
				<ul class="navbar nav-menu text-right" style="padding-right: 10%;">
					<li class="menu-item"><a href="moreInfo.jsp"><i><u>About</u></i></a></li>
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
			
			<div class="welcome">
				<p class="slideChild">Welcome<p><br>
				<p class="slideChild">
					<i>Welcome to Know -me</i>
				</p>
				<p class="slideChild">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis molestie est. Morbi bibendum nulla eget consectetur placerat. Cras dui neque, euismod ut pharetra ac, laoreet ac elit. Quisque elit libero, accumsan a placerat ac, dignissim tincidunt urna. Ut eget eros libero. In commodo ullamcorper luctus. Vivamus eu eros volutpat, convallis ligula imperdiet, dapibus justo.
				</p>
				<br>
				<div class="text-center slideChild">
					<a href="moreInfo.jsp" style="color: white;">Show More+</a>
				</div>
			</div>
		</div>
	</div>
	
	<div id="section">		
		<div class="info">
			<div class="infoLeft">
				<div>Know</div>
				<div style="margin-top: -30px;">&nbsp&nbsp&nbsp&nbsp-me?</div>
			</div>
			<div class="infoRight">
				<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis molestie est. Morbi bibendum nulla eget consectetur placerat. Cras dui neque, euismod ut pharetra ac, laoreet ac elit. Quisque elit libero, accumsan a placerat ac.</div>
				<div class="text-center">
				<a href="moreInfo.jsp" style="color: white;">Show More+</a></div>
			</div>
		</div>
		
		<div class="process">
			<div class="process_content">
				Aenean laoreet ante quam, nec mattis nisi pulvinar nec. Nam diam ipsum, convallis ut aliquam in, porttitor vel velit. Pellentesque eros ligula, pretium vel ultricies quis, convallis non nisi. Etiam hendrerit lacus sit amet nulla euismod, ut congue eros rhoncus. Nunc rutrum eget dolor at sodales. Vestibulum non nisl porttitor, ornare lectus a, ornare arcu. Aliquam ut quam libero. Integer non viverra velit. Nam et tellus ac arcu eleifend porttitor. Morbi in nulla hendrerit, ullamcorper metus non, finibus lacus. Mauris libero tortor, auctor eu eleifend id, vestibulum sit amet nisi. Maecenas ac justo molestie justo aliquam scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit amet vulputate augue, vitae imperdiet sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras neque turpis, fringilla nec finibus id, rutrum et sem.
				<br><br>
				Aenean laoreet ante quam, nec mattis nisi pulvinar nec. Nam diam ipsum, convallis ut aliquam in, porttitor vel velit. Pellentesque eros ligula, pretium vel ultricies quis, convallis non nisi. Etiam hendrerit lacus sit amet nulla euismod, ut congue eros rhoncus. Nunc rutrum eget dolor at sodales. Vestibulum non nisl porttitor, ornare lectus a, ornare arcu. Aliquam ut quam libero. Integer non viverra velit. Nam et tellus ac arcu eleifend porttitor. Morbi in nulla hendrerit, ullamcorper metus non, finibus lacus. Mauris libero tortor, auctor eu eleifend id, vestibulum sit amet nisi. Maecenas ac justo molestie justo aliquam scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit amet vulputate augue, vitae imperdiet sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras neque turpis, fringilla nec finibus id, rutrum et sem.
				<br><br>
				Aenean laoreet ante quam, nec mattis nisi pulvinar nec. Nam diam ipsum, convallis ut aliquam in, porttitor vel velit. Pellentesque eros ligula, pretium vel ultricies quis, convallis non nisi. Etiam hendrerit lacus sit amet nulla euismod, ut congue eros rhoncus. Nunc rutrum eget dolor at sodales. Vestibulum non nisl porttitor, ornare lectus a, ornare arcu. Aliquam ut quam libero. Integer non viverra velit. Nam et tellus ac arcu eleifend porttitor. Morbi in nulla hendrerit, ullamcorper metus non, finibus lacus. Mauris libero tortor, auctor eu eleifend id, vestibulum sit amet nisi. Maecenas ac justo molestie justo aliquam scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit amet vulputate augue, vitae imperdiet sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras neque turpis, fringilla nec finibus id, rutrum et sem.
			</div>
			<div class="process_line"></div>
			<div class="process_text">PROCESS</div>
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
	<script src="http://malsup.github.com/jquery.cycle2.js"></script>
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

	<!-- <script>
		$(document).ready(function(){
	    	$("#header").on('mousewheel',function(e){ 
	    		var wheel1 = e.originalEvent.wheelDelta; 
	    		//wheel < 0이면 스크롤 내릴 때
	    		//wheel > 0이면 스크롤 올릴 때
	            if(wheel1 < 0){ 
	            	var scrollPosition = $('#section > .info').offset().top - 33;
					
			     	$('html,body').animate({
			     		scrollTop: scrollPosition
			     	}, 1000);
	            }
	        });
			
	    	$("#section > .info").on('mousewheel',function(e){ 
	    		var wheel2 = e.originalEvent.wheelDelta; 
	    		
	            if(wheel2 > 0){ 
	            	var scrollPosition = $('#header').offset().top;
					
			     	$('html,body').animate({
			     		scrollTop: scrollPosition
			     	}, 1000);
	            }
	        });
	    	
	    	$("#section > .info").on('mousewheel',function(e){ 
	    		var wheel3 = e.originalEvent.wheelDelta; 
	    		
	            if(wheel3 < 0){ 
	            	var scrollPosition = $('#section > .process').offset().top - 33;
					
			     	$('html,body').animate({
			     		scrollTop: scrollPosition
			     	}, 1000);
	            }
	        });
	    	
	    	$("#section > .process").on('mousewheel',function(e){ 
	    		var wheel4 = e.originalEvent.wheelDelta; 
	    		
	            if(wheel4 > 0){ 
	            	var scrollPosition = $('#section > .info').offset().top - 33;
					
			     	$('html,body').animate({
			     		scrollTop: scrollPosition
			     	}, 1000);
	            }
	        });
		});
	</script> -->
</body>
</html>