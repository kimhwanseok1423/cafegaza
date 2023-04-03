<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<style type="text/css">
.nav {
	width: 700px;
	height: 20px;
	margin: auto;
}

.nav li {
	list-style: none;
	float: right;
	padding: 20px 20px 0 0;
}

.nav li a {
	background-color: tan;
	text-decoration: none;
	font-weight: 700;
	font-size: 15px;
	color: black;
	padding: 5px;
	border-radius: 10%;
	border: 1px solid tan;
}

.nav li a:hover {
	color: tan;
	border: 1px solid tan;
	background-color: ivory;
}
</style>
<body>
	<ul class="nav">
		<li><a href="writeView.do">작성</a></li>
	</ul>
</body>
</html>