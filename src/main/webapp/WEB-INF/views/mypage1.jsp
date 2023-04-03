<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>[키읔피읖] 회원정보수정 페이지입니다.</title>
<link href="resources/mypage111.css" type="text/css" rel="stylesheet" />

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>


</head>
</html>
<body>
</head>
<!-- 레이아웃 전체 감싸기 -->
<body class="wrap">
	<!-- header -->
	<header class="header">
		<%@include file="sidebar.jsp"%>

		<!-- header logo -->
		<div class="header_logo">
			<a href="map.do"><img src="resources/img/cafe_logo.png" /></a>
			<h5>서울에서 카페 찾기!</h5>
		</div>
		<%@include file="nav.jsp"%>
	</header>

	<!-- SECTION -->
	<section class="section">
		<!-- SECTION 1. LEFT SIDE -->
		<div class="left_section">
			<img id="my_page" src="resources/img/mypage_img.png" />
			<ul class="mypage_list">
				<li><a href="mypage1.do" id="ml">회원정보수정</a></li>
				<li><a href="memberDeleteView.do" id="ml2">회원탈퇴</a>
			</ul>
		</div>

		<!-- SECTION 2. RIGHT SIDE -->
		<div class="right_side">
			<form id="mypage_form" method="post">
				<!-- SECTION 2. RIGHT SIDE - 회원 정보 수정 -->
				<img id="user_edit" src="resources/img/user_edit.png" />
				<li>개인 정보 수정 페이지입니다.</li>
				<li>회원님의 개인 정보를 수정하실 수 있습니다.</li>
				<table id="user_edit">
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input class="id_input" name="memberId" /></td>
						</tr>


						<tr>
							<th>비밀번호</th>
							<td><input class="pw_input" name="memberPw" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input class="user_input" name="memberName" /></td>
						</tr>
						<th>생년월일</th>
						<td><input class="age_input" name="memberAge" /></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input class="mail_input" name="memberMail" /></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input class="address_input_1" name="memberAddr1" /></td>
						</tr>



					</tbody>
				</table>
				<div class="save">
					<input type="reset" value="취소" /> <input type="button"
						class="mypage_button" value="저장" />
				</div>
			</form>
		</div>
	</section>

	<!-- footer -->
	<%@include file="footer.jsp"%>
	<script>
		$(document).ready(function() {
			$(".mypage_button").click(function() {
				$("#mypage_form").attr("action", "mypage1.do");
				$("#mypage_form").submit();
			});
		});
	</script>
</body>
</html>