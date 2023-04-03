<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>자유게시판</title>
<link rel="stylesheet" href="resources/readView.css" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='readForm']");

						// 수정 
						$(".update_btn").on("click", function() {
							formObj.attr("action", "updateView.do");
							formObj.attr("method", "get");
							formObj.submit();
						})

						// 삭제
						$(".delete_btn").on("click", function() {
							var deleteYN = confirm("삭제하시겠습니까?");
							if (deleteYN == true) {

								formObj.attr("action", "delete.do");
								formObj.attr("method", "post");
								formObj.submit();
							}
						})

						// 목록
						$(".list_btn").on("click", function() {

							location.href = "list.do";
						})

						$(".replyWriteBtn").on("click", function() {
							var formObj = $("form[name='replyForm']");
							formObj.attr("action", "replyWrite.do");
							//formObj.attr("method","post");
							formObj.submit();
						});
						//댓글 수정
						$(".replyUpdateBtn")
								.on(
										"click",
										function() {
											location.href = "replyUpdateView.do?bno=${read.bno}"
													+ "&page=${spge.page}"
													+ "&perPageNum=${spge.perPageNum}"
													+ "&searchType=${spge.searchType}"
													+ "&keyword=${spge.keyword}"
													+ "&rno="
													+ $(this).attr("data-rno");
										})
						//댓글 삭제 View
						$(".replyDeleteBtn")
								.on(
										"click",
										function() {
											location.href = "replyDeleteView.do?bno=${read.bno}"
													+ "&page=${spge.page}"
													+ "&perPageNum=${spge.perPageNum}"
													+ "&searchType=${spge.searchType}"
													+ "&keyword=${spge.keyword}"
													+ "&rno="
													+ $(this).attr("data-rno");
										});

					})
</script>

<body>
	<div id="root" class="container">
		<header>
			<p>
				<img id="board_title" src="resources/img/coffee_people.png" />
			</p>
			<p>자유게시판</p>
			<%@include file="sidebar.jsp"%>
			<div>
				<%@include file="nav.jsp"%>
			</div>
		</header>


		<section id="container">
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="bno" name="bno" value="${read.bno}" />
			</form>
			<!-- 제목 부분 -->
			<div class="title">
				<p>
					<span>${read.title}</span>
				</p>
			</div>
			<!-- 작성자, 작성날짜 부분 -->
			<div class="writer">
				<span>${read.memberId} <i class="dot">・</i></span> <span
					class="regdate"> <fmt:formatDate value="${read.regdate}"
						pattern="yyyy-MM-dd" />
				</span>
			</div>
			<!-- 내용 부분 -->
			<div class="content">
				<textarea id="content" name="content" class="form-control"
					readonly="readonly">
				<c:out value="${read.content}" />
			</textarea>
			</div>

			<div class="content_button">
				<c:if test="${dtoo.memberId==read.memberId}">
					<button type="submit" class="update_btn btn btn-warning">수정</button>
					<button type="submit" class="delete_btn btn btn-danger">삭제</button>
				</c:if>
				<button type="submit" class="list_btn btn btn-primary">목록</button>

			</div>

			<form name="replyForm" method="post" class="form-horizontal">
				<input type="hidden" id="bno" name="bno" value="${read.bno}" /> <input
					type="hidden" id="page" name="page" value="${spge.page}" /> <input
					type="hidden" id="perPageNum" name="perPageNum"
					value="${spge.perPageNum}" /> <input type="hidden" id="searchType"
					name="searchType" value="${spge.searchType}" /> <input
					type="hidden" id="keyword" name="keyword" value="${spge.keyword}" />
				<div class="reply_writer">
					<label for="memberId" class="col-sm-2 control-label">댓글쓰기</label>
				</div>
				<div class="reply_content">
					<input type="hidden" id="memberId" name="memberId"
						value="${dtoo.memberId}" /> <input type="text" id="content"
						name="content" class="form_content" placeholder="댓글 내용을 입력하세요." />
				</div>

				<div class="form-group">
					<div class="form_button">
						<button type="button" class="replyWriteBtn">작성</button>
					</div>
				</div>
			</form>

			<div id="reply">
				<ol class="replyList">
					<c:forEach items="${replyList}" var="replyList">
						<li>
							<p>
							<p>
								${replyList.memberId}<i class="dot">・</i>
								<fmt:formatDate value="${replyList.regdate}"
									pattern="yyyy-MM-dd" />
							</p>

							<p class="replyList_content">${replyList.content}</p>
							<div class="reply_button">
								<c:if test="${dtoo.memberId==replyList.memberId}">
									<button type="button" class="replyUpdateBtn btn btn-warning"
										data-rno="${replyList.rno}">수정</button>
									<button type="button" class="replyDeleteBtn btn btn-danger"
										data-rno="${replyList.rno}">삭제</button>
								</c:if>
							</div>
						</li>
					</c:forEach>
				</ol>
			</div>


		</section>

		<!--FOOTER-->
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
