<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		alert("회원가입 되었습니다.");
		location.href='main.jsp';
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	// request 요청 파라미터 정보 가져오기

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	Connection conn = null;   //데이터베이스에 접근하기 위한 객체
    PreparedStatement pstmt = null;  
    ResultSet rs = null;   //정보를 담을 수 있는 변수를 생성
    
    String dbURL="jdbc:mysql://localhost:3306/project?serverTimezone=UTC";                             
    String dbID="quftld3";
    String dbPassword="dbswpgur12!";
    
    String SQL= "INSERT INTO USER VALUES(?, ?, ?) ";
    try {
      	Class.forName("com.mysql.cj.jdbc.Driver");
        conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
            
        pstmt = conn.prepareStatement(SQL);
        pstmt.setString(1, name);
        pstmt.setString(2, id);
        pstmt.setString(3, pw);
        pstmt.executeUpdate();
    }
    catch(Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>