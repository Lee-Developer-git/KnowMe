<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="project.ProjectDAO"%>
<%@ page import="project.Project"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="project" class="project.Project" scope="page" />
<jsp:setProperty name="project" property="projectIntro" />
<jsp:setProperty name="project" property="projectGithub" />
<jsp:setProperty name="project" property="projectSettings" />
<jsp:setProperty name="project" property="projectName" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KnowMe</title>
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
		} else {
			if (project.getProjectIntro() == null || project.getProjectGithub() == null
					|| project.getProjectSettings() == null || project.getProjectName() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				ProjectDAO projectDAO = new ProjectDAO();
				
				int result = projectDAO.write(userID, project.getProjectIntro(),
						project.getProjectGithub(), project.getProjectSettings(), project.getProjectName());
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'projectList.jsp'");
					script.println("</script>");
				}
			}
		}
	%>
</body>
</body>
</html>