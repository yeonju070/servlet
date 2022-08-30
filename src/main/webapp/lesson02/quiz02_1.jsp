<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_1</title>
</head>
<body>
	<%
		String type = request.getParameter("type");
		
		Date now = new Date();
		SimpleDateFormat date;	// null
		
		if (type.equals("time")) {
			date = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		} else if (type.equals("date")) {
			date = new SimpleDateFormat("오늘 날짜는 yyyy년 MM월 dd일 입니다.");			
		} else {
			date = new SimpleDateFormat();
		}
		
		String result = date.format(now);
	%>
	
	<div class="container">
		<div class="display-3"><%= result %></div>
	</div>
</body>
</html>