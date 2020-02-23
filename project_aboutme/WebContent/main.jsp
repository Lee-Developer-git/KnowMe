<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="main.css">
        <title>AboutMe</title>
    </head>
    <body>
      <div id="header" class="jumbotron text-center">
        <div id="top">
          <a href="join.jsp"><span>Login</span></a>
        </div>
        <br><br>
        <a href="main.jsp"><img src="logo_transparent.png" style="width: 200px; height: 200px;"/></a>
      </div>

      <div id="Main_text"></div>

      <div id="section">
        <div class="navigation">
          <ul class="nav-menu text-center">
            <li class="menu-item" style="padding-top: 16px;"><a href="#">윤제혁</a></li>
            <div id="nav_text"></div>
            <li class="menu-item" style="border-top: 0;"><a href="#">박미지</a></li>
            <div id="nav_text"></div>
            <li class="menu-item" style="border-top: 0;"><a href="#">이슬기</a></li>
          </ul>
        </div>
        <div class="search_bar">
          <form>
            <input type="text" class="input-search" />
            <input type="submit" class="input-search-submit" value="검색" />
          </form>
        </div>
        <div class="index">

        </div>
      </div>
      <div id="footer" class="text-center">
        <div class="copyright">
          ⒸAboutMe Corp.
        </div>
        <div class="github" onclick="location.href='https://github.com/FrontEndDevelop/AboutMe'">
          https://github.com/FrontEndDevelop/AboutMe
        </div>
      </div>
    </body>
</html>
