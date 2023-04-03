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
<link rel="stylesheet" href="resources/list.css" />

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>
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
			<div id="wrap">
				<form role="form" method="get">
					<%@include file="boardmenu.jsp"%>
					<table class="table table-striped table table-hover">
						<tr class="table_name">
							<th class="table_num">번호</th>
							<th class="table_title">제목</th>
							<th class="table_writer">작성자</th>
							<th class="table_date">등록일</th>
						</tr>

						<c:forEach items="${list}" var="list" varStatus="varStatus">
							<tr class="table_content">
								<td class="table_num"><c:out value="${varStatus.count}" /></td>
								<td class="table_title"><a
									href="readView.do?bno=${list.bno}"><c:out
											value="${list.title}" /></a>
								<td class="table_writer"><c:out value="${list.memberId}" /></td>
								<td class="table_date"><fmt:formatDate
										value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
									
							</tr>
						</c:forEach>
					</table>

					<div class="search_row">
						<div class="search_select">
							<select name="searchType" class="search_form">
								<option value="n"
									<c:out value="${spge.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"
									<c:out value="${spge.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"
									<c:out value="${spge.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="w"
									<c:out value="${spge.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tc"
									<c:out value="${spge.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
						<div class="search_keyword">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput"
									value="${spge.keyword}" class="form-control" /> <span
									class="input-group-btn">
									<button id="searchBtn" type="button" class="search_btn">검색</button>
								</span>
							</div>
						</div>
						<script>
							$(function() {
								$('#searchBtn')
										.click(
												function() {
													self.location = "list.do"
															+ '${pageMaker.makeQuery(1)}'
															+ "&searchType="
															+ $(
																	"select option:selected")
																	.val()
															+ "&keyword="
															+ encodeURIComponent($(
																	'#keywordInput')
																	.val());
												});
							});
						</script>
					</div>

					<div class="page">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li id="page_btn"><a
									href="list.do${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}" var="idx">
								<li><a href="list.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li id="page_btn"><a
									href="list.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if>
						</ul>
					</div>
				</form>
			</div>
		</section>

		<!-- footer -->
		<%@include file="footer.jsp"%>

	</div>
</body>
</html>