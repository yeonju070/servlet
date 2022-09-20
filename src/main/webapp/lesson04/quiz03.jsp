<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
header {height:70px; background-color: coral;}
nav {height:70px; background-color: coral;}
nav .menu {color:#fff;}
.contents {height:700px;}
.contents:hover {background-color: lightsteelblue;}
footer {height:50px;}
</style>
</head>
<body>
	<%
	 	// DB 연결
	 	MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// select DB
		String selectQuery = "select * from `seller` as A left join `used_goods`" + 
										  " as B on A.id = B.sellerId order by A.id desc;";
		ResultSet result = ms.select(selectQuery);
	%>
	<div class="container">
		<header class="">
				<h1 class="text-white text-center pt-4">HONG당무 마켓</h1>
		</header>
		<nav class="d-flex align-items-center">
			<ul class="menu nav text-center w-100">
				<li class="col-4 font-weight-bold text-white"><a href="#">리스트</a></li>
				<li class="col-4 font-weight-bold text-white"><a href="#">물건 올리기</a></li>
				<li class="col-4 font-weight-bold text-white"><a href="#">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="contents bg-secondary">
			<div class="content">
				<%
					while (result.next()) {	// result 가 있는동안
				%>
				<article class="justify-content-around">
					<div class="d-flex image-box flex-wrap border border-success d-flex">
						<img src="<%= result.getString("B.pictureUrl") %>" alt="이미지" width="150px">
						<a href="#"><%= result.getString("B.title") %>원</a>
						<a href="#"><%= result.getString("A.nickname") %></a>
					</div>
				</article>
				<%
					}
				%>
			</div>
		</section>
		<footer class="text-center">
			<small class="text-secondary">Copyright 2022. HONG All Rights Reserved.</small>	
		</footer>
	</div>
</body>
</html>