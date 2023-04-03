
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>[키읔피읖] 로그인 페이지입니다.</title>

    <script
      src="https://code.jquery.com/jquery-3.4.1.js"
      integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
      crossorigin="anonymous"
    ></script>
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="resources/login1.css" />
  </head>

  <body>
    <div class="wrapper">
      <div class="wrap">
        <form id="login_form" method="post">
          <div class="logo_wrap">
            <span><img src="resources/img/cafe_logo.png" /></span>
          </div>
          <div class="login_wrap">
            <div class="id_wrap">
              <img class="login_icon" src="resources/img/login_user.png" />
              <div class="id_input_box">
                <input class="id_input" name="memberId" />
              </div>
            </div>
            <div class="pw_wrap">
              <img class="login_icon" src="resources/img/login_password.png" />
              <div class="pw_input_box">
                <input class="pw_iput" name="memberPw" />
              </div>
            </div>
            <c:if test="${result == 0 }">
              <div class="login_warn">
                사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.
              </div>
            </c:if>
            <div class="login_button_wrap">
              <button type="button" class="login_button1">
                <img src="resources/img/login.png" />
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        /* 로그인 버튼 클릭 메서드 */
        $(".login_button1").click(function () {
          $("#login_form").attr("action", "login.do");
          $("#login_form").submit();
        });
      });
    </script>
  </body>
</html>
