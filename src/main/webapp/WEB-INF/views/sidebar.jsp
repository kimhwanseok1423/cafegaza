<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>키읔피읖에서 원하는 카페를 찾아보세요.</title>

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>
<style>
/* side bar */
.sidebar p {
	border-left: 10px solid black;
	text-align: left;
	font-size: 40px;
}

.sidebar img {
	height: 40px;
	padding-left: 10px;
	vertical-align: top;
}

.sidebar ul {
	padding-top: 10%;
	text-align: left;
}

.sidebar ul li {
	list-style-type: none;
}

.sidebar ul li a {
	padding-left: 15px;
	text-decoration-line: none;
	font-size: 25px;
	line-height: 50px;
	color: black;
}

.sidebar ul li a:hover {
	color: ivory;
	transition: 0.3s;
}

#side_menu {
	width: 50px;
	height: 50px;
}

input[id="menuicon"] {
	display: none;
}

input[id="menuicon"]+ul {
	display: block;
	position: fixed;
	left: -20px;
	top: 3%;
	transform: translateY(-50%);
	transition: all 0.35s;
	text-align: right;
	left: 320px;
}

input[id="menuicon"]+ul>li {
	display: block;
	width: 50px;
	height: 50px;
	position: relative;
	margin-top: -1px;
}

input[id="menuicon"]+ul>li>a {
	display: block;
	width: auto;
	height: 50px;
	overflow: hidden;
	transition: all 0.35s;
}

input[id="menuicon"]+ul>li>label {
	display: block;
	cursor: pointer;
	width: auto;
	height: 50px;
}

input[id="menuicon"]:checked+ul {
	z-index: 2;
	left: 0px;
}

input[id="menuicon"]:checked+ul>li:nth-child(1) label {
	z-index: 2;
	left: 320px;
}

div[class="sidebar"] {
	width: 320px;
	height: 100%;
	background-color: tan;
	position: fixed;
	top: 0;
	z-index: 1;
	transition: all 0.35s;
}

input[id="menuicon"]:checked+ul+div {
	left: -320px;
}
</style>

<body class="wrap">
	<!-- 1. header side bar -->
	<input type="checkbox" id="menuicon" />
	<ul>
		<li><label for="menuicon"><img
				src="resources/img/menuicon.png" id="side_menu" /> </label></li>
	</ul>


	<div class="sidebar">

		<ul id="side_mypage">
			<p>
				<img src="resources/img/sidemypage.png" />
			</p>
			<c:if test="${dtoo == null }">
			로그인 후 접근 가능
			</c:if>
			<c:if test="${dtoo != null }">
				<li><a href="mypage1.do">회원정보수정</a></li>
				<li><a href="memberDeleteView.do">회원탈퇴</a></li>

			</c:if>
		</ul>
		<ul id="side_board">
			<p>
				<img src="resources/img/side_board.png" />
			</p>

			<c:if test="${dtoo == null }">
			로그인 후 접근 가능
			</c:if>
			<c:if test="${dtoo != null }">
				<li><a href="list.do">자유게시판</a></li>
			</c:if>
		</ul>
		<ul id="side_recommend">
			<p>
				<img src="resources/img/side_recommend.png" />
			</p>
			<li><a href="top.do">연령별 인기순위20</a></li>
		</ul>
	</div>

	<!-- 위로 가기(header) 아이콘 -->
	<div style="position: fixed; bottom: 20px; right: 20px">
		<a href="#"><img src="resources/img/top_icon.png" alt="위로 가기" /></a>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
</html>