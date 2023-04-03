<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<style>
#root {
	background-color: ivory;
	font-family: "Nanum Gothic", sans-serif;
	width: 100%;
	height: 100%;
}

#container {
	padding-top: 200px;
	margin: auto;
	text-align: center;
}

img {
	width: 200px;
	height: 200px;
}

.del_can_btn {
	font-size: 30px;
}

.del_can_btn button {
	font-size: 20px;
	background-color: tan;
	color: ivory;
	border: 1px solid tan;
	padding: 10px;
	border-radius: 20px;
}

.del_can_btn button:hover {
	background-color: ivory;
	color: tan;
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='updateForm']");

						$(".cancel_btn")
								.on(
										"click",
										function() {
											location.href = "readView.do?bno=${replyDelete.bno}"
													+ "&page=${spge.page}"
													+ "&perPageNum=${spge.perPageNum}"
													+ "&searchType=${spge.searchType}"
													+ "&keyword=${spge.keyword}";
										})

					})
</script>
<body>

	<div id="root">
		<section id="container">
			<img src="resources/img/no-message.png" />
			<form name="updateForm" role="form" method="post"
				action="replyDelete.do">
				<input type="hidden" name="bno" value="${replyDelete.bno}"
					readonly="readonly" /> <input type="hidden" id="rno" name="rno"
					value="${replyDelete.rno}" /> <input type="hidden" id="page"
					name="page" value="${spge.page}"> <input type="hidden"
					id="perPageNum" name="perPageNum" value="${spge.perPageNum}">
				<input type="hidden" id="searchType" name="searchType"
					value="${spge.searchType}"> <input type="hidden"
					id="keyword" name="keyword" value="${spge.keyword}">

				<div class="del_can_btn">
					<p>작성한 댓글을 삭제하시겠습니까?</p>
					<button type="submit" class="delete_btn">예, 삭제합니다.</button>
					<button type="button" class="cancel_btn">아니오, 삭제하지 않습니다.</button>
				</div>
			</form>
		</section>
	</div>
</body>
</html>