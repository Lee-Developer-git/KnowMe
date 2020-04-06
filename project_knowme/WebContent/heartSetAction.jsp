<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="heart.HeartDAO"%>
<%@ page import="heart.Heart"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="heart" class="heart.Heart" scope="page" />
<jsp:setProperty name="heart" property="heartLike" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		int projectID = 0;
		if (request.getParameter("projectID") != null) {
			projectID = Integer.parseInt(request.getParameter("projectID"));
		}
		if (projectID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 프로젝트입니다.')");
			script.println("location.href = 'projectList.jsp'");
			script.println("</script>");
		} else {

			HeartDAO heartDAO = new HeartDAO();

			int result = heartDAO.setHeart(userID, projectID);

			if (result == -1) {
				PrintWriter script = response.getWriter();
				System.out.println("userID :"+userID);
				System.out.println("projectID :"+projectID);
				System.out.println("HeartLike :"+heart.getHeartLike());
				script.println("<script>");
				script.println("alert('데이터 베이스 오류입니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('추천이 완료되었습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}

		}
	%>
</body>
</html>