<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 출력
		// {"korea"=85, "english"=72, ...}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
	%>
	
	<table border=1>
	<%
		Set<String> keys = scoreMap.keySet();		// {"korea", "englisj" ...} set은 index가 없어서 랜덤한 값이 들어있다.
		Iterator<String> iter = keys.iterator();
		
		while (iter.hasNext()) {		// 테이블(태그)를 반복시킨다.
			String subject = iter.next();
	%>
		<tr>
			<th><%-- <%= subject %> --%>
				<%
					if (subject.equals("korean")) {
						out.print("국어");
					} else if (subject.equals("english")) {
						out.print("영어");
					} else if (subject.equals("math")) {
						out.print("수학");
					} else if (subject.equals("science")) {
						out.print("과학");
					}
				%>
			</th>
			<td><%= scoreMap.get(subject) %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>