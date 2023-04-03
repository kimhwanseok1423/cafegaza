<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
<style>
* {
	margin: 0px;
}

header {
	width: 100%;
	height: 100px;
	background-color: aqua;
}

nav {
	height: 670px;
	background-color: teal;
	width: 15%;
	float: left;
}

section {
	background-color: skyblue;
	width: 80%;
	height: 670px;
	float: right;
}

footer {
	background-color: #ffffff;
	clear: both;
}
</style>
</head>
<body>
	<header>
		<h2 style="align:'center'">Spring Tiles Example!!!</h2>
	</header>

	<nav>
	<ul>
	<li><a href="index.do">main</a></li>
	<li><a href="menu1.do">menu1</a></li>
	<li><a href="menu2.do">menu2</a></li>
	<li><a href="detail.do">detail</a></li>
</ul>
	</nav>

	<section>
		<tiles:insertAttribute name="body" />
	</section>

	<footer>
	<div style="background-color:yellow; align:center">
	Company Information
</div>
	</footer>

</body>
</html>