<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/top.css" type="text/css" rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="ajaxview/part01/jquery.js"></script>

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />
</head>
<body class="wrap">
	<!-- header -->
	<header class="header">
		<!-- header side bar -->
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

		<!-- header logo -->
		<div class="header_logo">
			<a href="map.do"><img src="resources/img/cafe_logo.png" /></a>
			<h5>서울에서 카페 찾기!</h5>
		</div>

		<%@include file="nav.jsp"%>
	</header>

	<!-- section -->
	<section class="section">
		<!-- left section -->
		<div class="left_section">
			<div class="top20_name">
				<p>연령별 선호도 TOP20 카페</p>
				<img class="generation" src="resources/img/generation.png"
					alt="top20" />
			</div>
			<div class="age_group">
				<button class="twenty">
					<img src="resources/img/20.png" /><span>20대</span>
				</button>
				<button class="twenty">
					<img src="resources/img/30.png" /><span>30대</span>
				</button>
				<button class="twenty">
					<img src="resources/img/40.png" /><span>40대</span>
				</button>
				<button class="twenty">
					<img src="resources/img/50.png" /><span>50대</span>
				</button>
				<button class="twenty">
					<img src="resources/img/60.png" /><span>60대</span>
				</button>
			</div>
		</div>
		<!-- right section : contents -->
		<div class="right_section">
			<p>연령별 선호도 TOP20 카페</p>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>1</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221101084131_photo1_94ecf3cdea70.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">소금집 델리 안국점</li>
					<li class="top20_text2">서울특별시 종로구 계동 101-12 1층</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>2</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221101084057_photo2_94ecf3cdea70.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">포비</li>
					<li class="top20_text2">서울특별시 종로구 청진동 246</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>3</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221122125840_photo1_3fa11ac565dd.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">호랑이</li>
					<li class="top20_text2">서울특별시 중구 산림동 207-2</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>4</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221224070722749_photo_74a53e6be985.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">커피한약방</li>
					<li class="top20_text2">서울특별시 중구 을지로2가 101-34</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>5</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220908120531_photo1_f1b68ca05753.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">스코프</li>
					<li class="top20_text2">서울특별시 종로구 부암동 278-5</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>6</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221101012736_photo1_94ecf3cdea70.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">울프소셜클럽</li>
					<li class="top20_text2">서울특별시 용산구 한남동 795-2</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>7</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220909075753468_photo_2e5782a1e965.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">로우 커피 스탠드</li>
					<li class="top20_text2">서울특별시 성동구 성수동1가 8-16</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>8</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221104053104_photo1_4579b32a46a5.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">카페 아키비스트</li>
					<li class="top20_text2">서울특별시 종로구 효자동 164-7</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>9</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221105124944_photo2_febb7f765559.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">MTL</li>
					<li class="top20_text2">서울특별시 용산구 한남동 743-8</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>10</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221116082514_photo1_4492eba16d1c.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">포비 강남점</li>
					<li class="top20_text2">서울특별시 서초구 반포동 118-3</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>11</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221108133821_photo1_b57593d1e0db.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">리사르 커피</li>
					<li class="top20_text2">서울시 중구 신당동 366-32</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>12</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220603100548_photo1_7ad8692ea75e.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">테일러커피 연남호점</li>
					<li class="top20_text2">서울특별시 마포구 연남동 224-41</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>13</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221112051506104_photo_1f6af146c75c.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">러시아 케익</li>
					<li class="top20_text2">서울 중구 광희동1가 134</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>14</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220402071249_photo1_222c7343f723.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">테라로사 광화문점</li>
					<li class="top20_text2">서울특별시 종로구 중학동 19 더케이트윈타워 B동 1층</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>15</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220904072907_photo1_1eaa70d22d92.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">듀윗</li>
					<li class="top20_text2">서울특별시 마포구 연남동 260-14</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>16</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221205091037_photo1_fd993a6fc3b2.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">스타벅스 별다방점</li>
					<li class="top20_text2">서울특별시 중구 회현동2가 88 스테이트타워 남산</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>17</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20220905114008002_photo_0c355c4fe535.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">아우어베이커리 가로수길점</li>
					<li class="top20_text2">서울특별시 강남구 신사동 523-19</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>18</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221108101051544_photo_f36ee5025da3.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">파이홀</li>
					<li class="top20_text2">서울특별시 서대문구 창천동 57-61</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>19</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221108102009540_photo_f36ee5025da3.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">콜린</li>
					<li class="top20_text2">서울특별시 마포구 서교동 403-13</li>
				</ul>
			</div>
			<div class="cafe_top_list_10">
				<ul>
					<span class="ranknum"><td>20</td></span>
					<a href="#"><img class="cafe_photo"
						src="https://d12zq4w4guyljn.cloudfront.net/300_300_20221224064730_photo1_3dc58a5d0483.jpg"
						alt="카페사진" /></a>
					<li class="top20_text1">트리아농</li>
					<li class="top20_text2">서울특별시 강남구 청담동 26-5</li>
				</ul>
			</div>
		</div>
	</section>

	<!-- footer -->
	<%@include file="footer.jsp"%>

</body>

<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

</body>
</html>