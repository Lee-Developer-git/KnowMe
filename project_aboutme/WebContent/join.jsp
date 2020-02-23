<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="main.css">
        <title>AboutMe</title>
        <style>
        	#join {
        		width: 30%;
        		margin-left: 35%;
        		margin-top: 80px;
        	}
        	label {
        		color: tomato;
        	}
        	#inputId, #inputName, #inputPw, #inputPasswordCheck {
        		border: 1px solid tomato;
        	}
        	#inputId::placeholder, #inputName::placeholder, #inputPw::placeholder, #inputPasswordCheck::placeholder {
        		color: tomato;
        	}
        </style>
        <script>
        	function checkValue() {
        		if(f.name.value == "") {
        			alert("이름을 입력하세요.");
        			f.name.focus();
        			return false;
        		}
        		if(f.id.value == "") {
        			alert("아이디를 입력하세요.");
        			f.id.focus();
        			return false;
        		}
        		
        		if(f.pw.value == "") {
        			alert("비밀번호를 입력하세요.");
        			f.pw.focus();
        			return false;
        		}
        		
        		if(f.pw.value != f.pwc.value) {
        			alert("비밀번호를 동일하게 입력해주세요.");
        			f.pwc.focus();
        			return false;
        		}
        		
        		document.f.submit();
        	}
        </script>
	</head>
	<body>
		<div id="header" class="jumbotron text-center">
	    	<div id="top">
	        	<a href="Login.jsp"><span>Login</span></a>
	      	</div>
	    	<br><br>
	      	<a href="main.jsp"><img src="logo_transparent.png" style="width: 200px; height: 200px;"/></a>
	    </div>
	
	    <div id="Main_text"></div>
	    
	    <div id="section">
      		<form name="f" role="form" id="join" method="post" action="joinAction.jsp" onsubmit="return checkValue();">
      			<div class="form-group">
		        	<label for="inputName">이름</label>
		          	<input type="text" class="form-control" id="inputName" name="name" placeholder="이름을 입력해 주세요">
		        </div>
		        <div class="form-group">
		        	<label for="inputId">ID</label>
		          	<input type="text" class="form-control" id="inputId" name="id" placeholder="ID를 입력해 주세요">
		        </div>
		        <div class="form-group">
		          	<label for="inputPassword">비밀번호</label>
		          	<input type="password" class="form-control" id="inputPw" name="pw" placeholder="비밀번호를 입력해 주세요">
		        </div>
		        <div class="form-group">
		          	<label for="inputPasswordCheck">비밀번호 확인</label>
		          	<input type="password" class="form-control" id="inputPasswordCheck" name="pwc" placeholder="비밀번호 다시 한 번 입력해 주세요">
		        </div>
		        <div class="form-group text-right">
          			<button type="submit" name="submit" id="join-submit" class="btn" style="background-color: tomato; border: 1px solid tomato; color: white;">회원가입</button>
        		</div>
		    </form>
	    </div>
	    <div id="footer" class="text-center">
	    	<div class="copyright">ⒸAboutMe Corp.</div>
	      	<div class="github" onclick="location.href='https://github.com/FrontEndDevelop/AboutMe'">
	        	https://github.com/FrontEndDevelop/AboutMe
	      	</div>
	    </div>
	</body>
</html>