<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
/*===================== header =====================*/

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
	left: 320px;
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
	left: -320px;
	z-index: 1;
	transition: all 0.35s;
}

input[id="menuicon"]:checked+ul+div {
	left: 0;
}

/* header logo */
.header_logo {
	width: 100%;
	height: 150px;
	padding-top: 20px;
	text-align: center;
}

.header_logo img {
	max-width: 100%;
	max-height: 100%;
}

/*header menu*/
.header_menu li {
	list-style-type: none;
	float: right;
	padding-right: 20px;
}

.header_menu li a {
	text-decoration: none;
	color: black;
}

.memmem {
	font-weight: bold;
}
</style>
<!--HEADER-->
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
		<li><a href="mypage1.do">회원정보수정</a></li>
	</ul>
	<ul id="side_board">
		<p>
			<img src="resources/img/side_board.png" />
		</p>
		<li><a href="list.do">자유게시판</a></li>
	</ul>
	<ul id="side_recommend">
		<p>
			<img src="resources/img/side_recommend.png" />
		</p>
		<li><a href="top.do">연령별 인기순위20</a></li>
	</ul>
</div>

<!-- 2. header logo -->
<div class="header_logo">
	<a href="map.do"><img src="resources/img/cafe_logo.png" /></a>
</div>

<!-- 3. header menu -->
<div class="header_menu">
	<!-- 로그인 하지 않은 상태 -->
	<ul id="join_login_off">
		<c:if test="${dtoo == null }">
			<li><a href="join.do">회원가입</a></li>
			<li><a href="login.do">로그인</a></li>
		</c:if>
	</ul>

	<!-- 로그인 한 상태 -->
	<ul id="join_login_on">
		<c:if test="${dtoo != null }">
			<li><a href="logout.do">로그아웃</a></li>
			<li class="memmem">${dtoo.memberId}님환영합니다!</li>
		</c:if>
	</ul>
</div>

<!-- 위로 가기(header) 아이콘 -->
<div style="position: fixed; bottom: 20px; right: 20px">
	<a href="#"><img src="resources/img/top_icon.png" alt="위로 가기" /></a>
</div>


