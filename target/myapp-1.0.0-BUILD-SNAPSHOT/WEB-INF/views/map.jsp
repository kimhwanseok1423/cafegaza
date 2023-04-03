<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>키읔피읖에서 원하는 카페를 찾아보세요.</title>
<link rel="stylesheet" href="resources/map1.css" />

<!-- 구글 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f4a0a53a5f6baba5832464c7dadb6501"></script>
</head>

<body class="wrap">
	<!--HEADER-->
	<header class="header">
		<%@include file="sidebar.jsp"%>

		<!-- header logo -->
		<div class="header_logo">
			<a href="map.do"><img src="resources/img/cafe_logo.png" /></a>
			<h5>서울에서 카페 찾기!</h5>
		</div>

		<%@include file="nav.jsp"%>
	</header>

	<!--CONTENTS-->
	<section class="section">
		<div class="section_top">
			<!--CONTENTS BOTTOM(카테고리 버튼, 카페 리스트)-->
			<p id="cate_img">
				<img src="resources/img/catesearch.png" /> <br />원하는 카테고리 속 키워드를
				선택해 카페를 검색해보세요!<br />
			</p>
			<!--카테고리 버튼(왼쪽)-->
			<div class="left_section">
				<div class="button_list">
					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">데이트</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">맛집</button>
								<button id="sub_keyword" class="active1">음식</button>
								<button id="sub_keyword" class="active1">남자</button>
								<button id="sub_keyword" class="active1">여자</button>
								<button id="sub_keyword" class="active1">저렴</button>
								<button id="sub_keyword" class="active1">테라스</button>
								<button id="sub_keyword" class="active1">야외</button>
								<button id="sub_keyword" class="active1">데이트</button>
								<button id="sub_keyword" class="active1">이벤트</button>
								<button id="sub_keyword" class="active1">여자친구</button>
								<button id="sub_keyword" class="active1">브런치</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details open>
							<summary>

								<button id="main_keyword">분위기</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">분위기</button>
								<button id="sub_keyword" class="active1">공간</button>
								<button id="sub_keyword" class="active1">인테리어</button>
								<button id="sub_keyword" class="active1">느낌</button>
								<button id="sub_keyword" class="active1">음악</button>
								<button id="sub_keyword" class="active1">사진</button>
								<button id="sub_keyword" class="active1">인스타</button>
								<button id="sub_keyword" class="active1">노래</button>
								<button id="sub_keyword" class="active1">감성</button>
								<button id="sub_keyword" class="active1">힐링</button>
								<button id="sub_keyword" class="active1">소품</button>
								<button id="sub_keyword" class="active1">선곡</button>
								<button id="sub_keyword" class="active1">아기자기</button>
								<button id="sub_keyword" class="active1">추억</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">수다/모임</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">자리</button>
								<button id="sub_keyword" class="active1">테이블</button>
								<button id="sub_keyword" class="active1">친구</button>
								<button id="sub_keyword" class="active1">대화</button>
								<button id="sub_keyword" class="active1">수다</button>
								<button id="sub_keyword" class="active1">일행</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">공부/과제</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">공부</button>
								<button id="sub_keyword" class="active1">테이블</button>
								<button id="sub_keyword" class="active1">의자</button>
								<button id="sub_keyword" class="active1">좌석</button>
								<button id="sub_keyword" class="active1">혼자</button>
								<button id="sub_keyword" class="active1">작업</button>
								<button id="sub_keyword" class="active1">콘센트</button>
								<button id="sub_keyword" class="active1">노트북</button>
								<button id="sub_keyword" class="active1">카공</button>
								<button id="sub_keyword" class="active1">북카페</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">디저트</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">디저트</button>
								<button id="sub_keyword" class="active1">케이크</button>
								<button id="sub_keyword" class="active1">초코</button>
								<button id="sub_keyword" class="active1">빙수</button>
								<button id="sub_keyword" class="active1">스콘</button>
								<button id="sub_keyword" class="active1">마카롱</button>
								<button id="sub_keyword" class="active1">아이스크림</button>
								<button id="sub_keyword" class="active1">달달</button>
								<button id="sub_keyword" class="active1">녹차</button>
								<button id="sub_keyword" class="active1">브라우니</button>
								<button id="sub_keyword" class="active1">까눌레</button>
								<button id="sub_keyword" class="active1">베이글</button>
								<button id="sub_keyword" class="active1">다쿠아즈</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">다이어트</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">과일</button>
								<button id="sub_keyword" class="active1">요거트</button>
								<button id="sub_keyword" class="active1">샐러드</button>
								<button id="sub_keyword" class="active1">비건</button>
								<button id="sub_keyword" class="active1">아보카도</button>
								<button id="sub_keyword" class="active1">바질</button>
								<button id="sub_keyword" class="active1">샌드위치</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">동물</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">강아지</button>
								<button id="sub_keyword" class="active1">애견</button>
								<button id="sub_keyword" class="active1">고양이</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">게임</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">보드게임</button>
								<button id="sub_keyword" class="active1">게임</button>
							</li>
						</details>
					</ul>

					<ul class="cate_name">
						<details>
							<summary>
								<button id="main_keyword">편의</button>
							</summary>
							<li class="cate_keyword">
								<button id="sub_keyword" class="active1">주차</button>
								<button id="sub_keyword" class="active1">주차장</button>
								<button id="sub_keyword" class="active1">와이파이</button>
								<button id="sub_keyword" class="active1">담배</button>
								<button id="sub_keyword" class="active1">흡연</button>
								<button id="sub_keyword" class="active1">흡연실</button>
							</li>
						</details>
					</ul>
				</div>
			</div>


			<!--카테고리 선택하면 뜨는 카페 리스트(오른쪽)-->
			<div class="right_section">
				<div class="cafe_list">
					<ul>
						<a href="detail.do?guId=SM171"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fcfile%2F121341174B872A2602"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">이디야커피 신촌기차역점</li>
						<li class="cafelist_text2">서울 서대문구 신촌역로 35</li>
						<li id="star-point">4.8</li>
					</ul>
					<ul>
						<a href="detail.do?guId=GR474"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fcfile%2F190ED13E4E02A32618"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">모베러블루스</li>
						<li class="cafelist_text2">서울 종로구 동숭4길 4</li>
						<li id="star-point">2.6</li>
					</ul>
					<ul>
						<a href="detail.do?guId=YS119"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fcfile%2F2322803A5726B0841C"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">드플로허</li>
						<li class="cafelist_text2">서울 용산구 대사관로5길 34</li>
						<li id="star-point">4</li>
					</ul>
					<ul>
						<a href="detail.do?guId=YS193"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flocalfiy%2F2207FF1432ED427AB724DEA750D3CA58"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페미미미 용산아이파크점</li>
						<li class="cafelist_text2">서울 용산구 한강대로23길 55 아이파크몰 패션관 4층</li>
						<li id="star-point">1.9</li>
					</ul>
					<ul>
						<a href="detail.do?guId=GUNG216"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flocalfiy%2F3AA92E71BBBA4058B9F8AF622742B936"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">포미스커피</li>
						<li class="cafelist_text2">서울 중구 서애로 14-1 1층</li>
						<li id="star-point">4.5</li>
					</ul>
					<ul>
						<a href="detail.do?guId=GN445"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flocalfiy%2F903F1E138558414AB84112C29F65CAD9"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">지유가오카핫쵸메 7호점</li>
						<li class="cafelist_text2">서울 강남구 강남대로118길 59 1층 102호</li>
						<li id="star-point">4.9</li>
					</ul>
					<ul>
						<a href="detail.do?guId=EP341"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flocalfiy%2FD16C54FFB574407B8FCE53F2E67B9E9D"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페림잇</li>
						<li class="cafelist_text2">서울 은평구 연서로25길 6-12</li>
						<li id="star-point">4</li>
					</ul>
					<ul>
						<a href="detail.do?guId=DDM93"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2F1B16905BBED747718F7160C585E2E111"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페전농주택</li>
						<li class="cafelist_text2">서울 동대문구 전농로 158</li>
						<li id="star-point">4.1</li>
					</ul>
					<ul>
						<a href="detail.do?guId=MA257"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2F379218195F1F4719B3A45062A12FC4D5"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">해피베어데이 합정점</li>
						<li class="cafelist_text2">서울 마포구 양화로12길 16-6 1층</li>
						<li id="star-point">3.7</li>
					</ul>
					<ul>
						<a href="detail.do?guId=SB224"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2F4C4F4782B9F84F47B4E99E4233483F2F"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">이츠이츠</li>
						<li class="cafelist_text2">서울 성북구 동소문로 34-7 1층</li>
						<li id="star-point">5</li>
					</ul>
					<ul>
						<a href="detail.do?guId=SB429"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2FA9A8F75176084100B009059C7D38F500"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페오영</li>
						<li class="cafelist_text2">서울 성북구 동소문로26가길 39</li>
						<li id="star-point">3.8</li>
					</ul>
					<ul>
						<a href="detail.do?guId=SM297"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2FBAD9AFC516E44865BDE4940AC779FF4C"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">스튜디오웝</li>
						<li class="cafelist_text2">서울 서대문구 성산로 539</li>
						<li id="star-point">4.4</li>
					</ul>
					<ul>
						<a href="detail.do?guId=YS340"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2FCA3A9414096748D0BAA84815DAA570AD"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">차품집</li>
						<li class="cafelist_text2">서울 용산구 한강대로10길 11-50 12층</li>
						<li id="star-point">5</li>
					</ul>
					<ul>
						<a href="detail.do?guId=EP410"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fplace%2FF218A8860D6D45F2A89667F392FF6BD8"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페포조</li>
						<li class="cafelist_text2">서울 은평구 은평로16길 9 1층</li>
						<li id="star-point">3.7</li>
					</ul>
					<ul>
						<a href="detail.do?guId=EP32"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Ffiy_reboot%2Fplace%2F3CA5815E9D2144AC918109C86B191245"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페달력</li>
						<li class="cafelist_text2">서울 은평구 연서로18길 28-2 1층</li>
						<li id="star-point">4.3</li>
					</ul>
					<ul>
						<a href="detail.do?guId=SP336"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Ffiy_reboot%2Fplace%2FB9E5532DC1AB4043BBCF6DC34DB7FD03"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">코지블루</li>
						<li class="cafelist_text2">서울 송파구 백제고분로45길 7 302호</li>
						<li id="star-point">4.8</li>
					</ul>
					<ul>
						<a href="detail.do?guId=GD244"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Fmystore%2F1B5D6B0088914FDF873522E60893EB9C"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">카페오니</li>
						<li class="cafelist_text2">서울 강동구 천중로 27-19 1층 101호</li>
						<li id="star-point">5</li>
					</ul>
					<ul>
						<a href="detail.do?guId=YS494"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Fmystore%2F72CC42B7314B4B54AE7356C1F3173B50"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">컨티뉴갤러리</li>
						<li class="cafelist_text2">서울 용산구 신흥로11길 51</li>
						<li id="star-point">5</li>
					</ul>
					<ul>
						<a href="detail.do?guId=YP204"> <img class="cafe_photo"
							src="//t1.kakaocdn.net/thumb/T800x0.q80/?fname=http%3A%2F%2Ft1.kakaocdn.net%2Fmystore%2FEA4FD7FA96834115AEDB665DD21354B1"
							alt="키읔피읖" />
						</a>
						<li class="cafelist_text">디데이원</li>
						<li class="cafelist_text2">서울 영등포구 당산로49길 14 우성빌딩 1 2층</li>
						<li id="star-point">3.2</li>
					</ul>
					<ul>
						<a href="detail.do?guId=SB137"> <img class="cafe_photo"
							src="resources/img/cloud.jpg" alt="키읔피읖" />
						</a>
						<li class="cafelist_text">CAFE혜화문아래</li>
						<li class="cafelist_text2">서울 성북구 창경궁로43길 16</li>
						<li id="star-point">4</li>
					</ul>


				</div>
			</div>
		</div>
		<div class="section_bottom">
			<!--CONTENTS_TOP(지도)-->
			<p id="cate_img">
				<img src="resources/img/mapsearch.png" /> <br />카페 위치를 검색해보세요!<br />
			</p>
			<div class="map_wrap">
				<div id="map" style="width: 100%; height: 100%; position: relative"></div>
				<!-- 지도타입 컨트롤 div 입니다 -->
				<div class="custom_typecontrol radius_border">
					<span id="btnRoadmap" class="selected_btn"
						onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
						class="btn" onclick="setMapType('skyview')"> 스카이뷰</span>
				</div>

				<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
				<div class="custom_zoomcontrol radius_border">
					<span onclick="zoomIn()"><img
						src="http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
						alt="확대" /></span> <span onclick="zoomOut()"><img
						src="http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
						alt="축소" /></span>
				</div>

				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<form onsubmit="searchPlaces(); return false">
							<span>지역명: <input type="text" value=" ex) 서울" id="keyword"
								size="15" />
								<button type="submit">검색하기</button></span>
						</form>
					</div>
					<hr />
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
		</div>
	</section>

	<!--FOOTER-->
	<%@include file="footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<script src="ajaxview/part02/map19.js"></script>

</html>