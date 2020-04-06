<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.Project"%>
<%@ page import="project.projectDAO"%>
<%@ page import="java.io.PrintWriter"%>

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
		if(request.getParameter("projectID") != null) {
			projectID = Integer.parseInt(request.getParameter("projectID"));
		}
		if (projectID == 0) {
			PrintWriter script = response.getWriter();
			System.out.println("projectID :"+projectID);
			script.println("<script>");
			script.println("alert('유효하지 않은 프로젝트입니다.')");
			script.println("location.href = 'projectList.jsp'");
			script.println("</script>");
		} else {
			projectDAO projectDAO = new projectDAO();

			int result = projectDAO.update(request.getParameter("projectOverview"),
					request.getParameter("projectGithub"), request.getParameter("projectSettings"),
					request.getParameter("projectName"), projectID);

			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('정보 수정에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}

			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('수정을 완료했습니다.')");
				script.println("location.href='projectList.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>