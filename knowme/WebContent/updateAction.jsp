<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.User" %> 
<%@ page import="user.UserDAO" %> 
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KnowMe</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if(userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 
	
		if(request.getParameter("userName") == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이름을 입력해주세요.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			UserDAO userDAO = new UserDAO();
			
			int result = userDAO.update(userID, request.getParameter("userName"), request.getParameter("userMotto"), request.getParameter("userField"), request.getParameter("userIntro"));
			
			if(result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('정보 수정에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'myInfo.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</body>
</html>