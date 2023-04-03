<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>[키읔피읖] 자유게시판</title>
<link rel="stylesheet" href="resources/writeView.css" />
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
		var formObj = $("form[name='writeForm']");
		$(".write_btn").on("click", function() {
			if (fn_valiChk()) {
				return false;
			}
			formObj.attr("action", "write.do");
			formObj.attr("method", "post")
			formObj.submit();

		});

	})
	function fn_valiChk() {
		var regForm = $("form[name='writeForm'] .chk").length;
		for (var i = 0; i < regForm; i++) {
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
			<form name="writeForm" method="post" action="write.do">
				<table>
					<tbody>
						<tr>
							 <input type="hidden" id="memberId"
								name="memberId" value="${dtoo.memberId}" />
						</tr>

						<tr>
							<td><label for="title">제목</label> <input type="text"
								id="title" name="title" class="chk" title="제목을 입력하세요."
								placeholder="제목" /></td>
						</tr>

						<tr>
							<td><label for="content">내용</label> <textarea id="content"
									name="content" class="chk" title="내용을 입력하세요"
									placeholder="내용을 입력하세요."></textarea></td>
						</tr>

						<tr>
							<td>
								<button class="write_btn" type="button">작성</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</section>
	</div>
</body>
</html>