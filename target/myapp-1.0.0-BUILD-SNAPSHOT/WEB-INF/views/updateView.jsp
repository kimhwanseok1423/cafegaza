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
<title>[키읔피읖] 자유게시판</title>
<link rel="stylesheet" href="resources/updateView.css" />
<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[name='updateForm']");

		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "list.do";
		})

		$(".update_btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "update.do");
			formObj.attr("method", "post");
			formObj.submit();
		})
	})

	function fn_valiChk() {
		var updateForm = $("form[name='updateForm'] .chk").length;
		for (var i = 0; i < updateForm; i++) {
			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}
</script>
<body>

	<div id="root">
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
			<form name="updateForm" method="post" action="update.do">
				<input type="hidden" name="bno" value="${update.bno}"
					readonly="readonly" />
				<table>
					<tbody>
						<tr>
							<td class="writer"><label for="writer">이름</label><input
								type="text" id="memberId" name="memberId"
								value="${update.memberId}" readonly="readonly" /></td>
						</tr>
						<tr>
							<td class="title"><label for="title">제목</label><input
								type="text" id="title" name="title" value="${update.title}"
								class="chk" title="제목을 입력하세요" /></td>
						</tr>
						<tr>
							<td class="content"><label for="content"></label> <textarea
									id="content" name="content" class="chk" title="내용을 입력하세요"><c:out
										value="${update.content}" /></textarea></td>
						</tr>

						<tr>
							<td class="date"><label for="regdate">작성날짜</label> <fmt:formatDate
									value="${update.regdate}" pattern="yyyy-MM-dd" /></td>
						</tr>
					</tbody>
				</table>
				<div class="content_button">
					<button type="submit" class="update_btn">저장</button>
					<button type="submit" class="cancel_btn">취소</button>
				</div>
			</form>
		</section>

	</div>
</body>
</html>

