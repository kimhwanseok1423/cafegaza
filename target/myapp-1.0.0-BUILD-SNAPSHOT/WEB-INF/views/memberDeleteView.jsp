<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>[키읔피읖] 회원탈퇴 페이지입니다.</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="resources/memberDeleteView.css" type="text/css"
	rel="stylesheet" />

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cencle").on("click", function() {

			location.href = "map.do";

		})

		$(".btn").on("click", function() {
			
				
				
				if($("#memberPw").val()=""){
					alert("비밀번호를 입력해주세요.");
					$("#memberPw").focus();
					return false;
				}	

	})
	})
</script>

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
			<!-- SECTION 2. RIGHT SIDE - 회원 정보 수정 -->
			<img id="user_delete" src="resources/img/user_delete.png" />
			<li>회원 탈퇴 페이지입니다.</li>
			<li>탈퇴 완료시 계정이 삭제됩니다.</li>
	
			<form action="memberDelete.do" method="post">
				<div class="delete_info">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="memberId" name="memberId" value="${dtoo.memberId}" readonly="readonly"/>
				</div>
				<div class="delete_info">
					<label class="control-label" for="memberPw">패스워드</label>
					<input class="form-control" type="password" id="memberPw" name="memberPw"   />
				</div>
				<div class="delete_info">
					<label class="control-label" for="memberName">성명</label>
					<input class="form-control" type="text" id="memberName" name="memberName" value="${dtoo.memberName}" readonly="readonly"/>
				</div>
				<div class="buttons">
					<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
			
			</div>
			<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
			</section>
		
	
	<!-- footer -->
	<%@include file="footer.jsp"%>
</body>

</html>
