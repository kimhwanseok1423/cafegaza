<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>[키읔피읖] 카페 상세페이지입니다.</title>
<link rel="stylesheet" href="resources/mypage.css" />
<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="ajaxview/part02/map19.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='deleteForm']");
		// 삭제
		$(".delete_btn").on("click", function() {
			var deleteYN = confirm("삭제하시겠습니까?");
			if (deleteYN == true) {

				formObj.attr("action", "cafe_replydelete.do");
				formObj.attr("method", "post");
				formObj.submit();
			}
		})

		// 목록
		$(".list_btn").on("click", function() {

			location.href = "list.do";
		})
	})
</script>
<body>
	<div id="wrap">
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

		<!------------------------------------------------------------------>

		<!-- section -->
		<div class="section">
			<!-- 카페 사진, 이름, 위치, 평점, 영업시간, 번호, 댓글 -->
			<!-- section 1. cafe photo(top_left) -->
			<div class="top_left">
				<img src="${dto1.cafePhoto}" />
			</div>

			<!-- section 2. cafe information(top_right) -->
			<div class="right_top">

				<img id="cafe_name_icon" src="resources/img/coffeebeans.png" /> <span
					class="cafe_name">${dto1.cafeName}</span>
				<div class="like">
					<a href="#"><i class="far fa-heart" id="heart"></i></a>
				</div>
				<div class="cafe_info">
					<ul>
						<li><img src="resources/img/location.png" id="info_icon" />
							<span class="l"></span> <span>${dto1.cafeAddress}</span></li>
						<li><img src="resources/img/phone.png" id="info_icon" /> <span
							class="l"></span> <span>${dto1.cafephone}</span></li>
						<li><img src="resources/img/clock.png" id="info_icon" /> <span
							class="l"></span> <span>${dto1.cafetime}</span></li>
						<li><img src="resources/img/customer-service.png"
							id="info_icon" /> <span class="l"></span> <span id="star-point">${dto1.cafestar}</span></li>
					</ul>
				</div>
			</div>

			<!-- section 3. review section(bottom) -->

			<div class="right_bottom">
				<c:if test="${dtoo != null }">
					<h2>리뷰</h2>
					<form name="replyForm" method="post" action="cafe_replyWrite.do">
						<div class="reply_subject">
							<label for="content"></label><input type="text" id="content"
								name="content" /> <input type="hidden" id="memberId"
								name="memberId" value="${dtoo.memberId}" />
							<div>
								<input type="hidden" id="guid" name="guId" value="${dto1.guId}" />
								<button id="reply_submit" type="submit">작성</button>
							</div>
						</div>

					</form>
				</c:if>
				<div class="review_section">

					<ol class="replyList">
						<c:forEach items="${replyList}" var="replydao">
							<li>
								<p class="reply_writer">${replydao.memberId}</p>
								<p class="reply_content">${replydao.content}</p>
								<p class="reply_date">
									<fmt:formatDate value="${replydao.regdate}"
										pattern="yyyy-MM-dd" />
								</p>
								<form name="deleteForm" role="form" method="post">
									<div class="reply_button_wrap">
										<input type="hidden" id="rno" name="rno"
											value="${replydao.rno}" /> <input type="hidden" id="guid"
											name="guId" value="${dto1.guId}" />
										<c:if test="${dtoo.memberId==replydao.memberId}">
											<button type="submit" class="delete_btn">삭제</button>
										</c:if>
									</div>
								</form>
							</li>
						</c:forEach>
					</ol>


				</div>
			</div>
		</div>

		<!------------------------------------------------------------------>

		<!-- footer -->
		<%@include file="footer.jsp"%>
	</div>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

</html>