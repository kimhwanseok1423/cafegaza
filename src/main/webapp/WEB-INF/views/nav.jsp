<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.header_menu li {
	list-style-type: none;
	float: right;
	padding: 30px 20px 0 0;
}

.header_menu {
	width: 100%;
	height: 50px;
}

.header_menu li a {
	text-decoration: none;
	color: black;
}

.memmem {
	font-weight: bold;
}
</style>
<div class="header_menu">
	<!-- 로그인 하지 않은 상태 -->
	<ul id="join_login_off">
		<c:if test="${dtoo == null }">
			<li><a href="join.do">회원가입</a></li>
			<li><a href="login.do">로그인</a></li>
			<li><a href="map.do">메인</a>
		</c:if>
	</ul>

	<!-- 로그인 한 상태 -->
	<ul id="join_login_on">
		<c:if test="${dtoo != null }">
			<li><a href="map.do">메인</a>
			<li><a href="logout.do">로그아웃</a></li>
			<li class="memmem">${dtoo.memberName}님 환영합니다!</li>
		</c:if>
	</ul>
</div>

