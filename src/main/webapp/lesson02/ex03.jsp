<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 폼태그</title>
</head>
<body>
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까?
		<input type="text" name="nickname"><br><br>
		2. 취미는 무엇입니까?
		<input type="text" name="hobby"><br><br>
		3. 강아지 or 고양이?
		<label for="dog">강아지</label>
		<input type="radio" id="dog" name="animal" value="dog" checked>
		<label for="cat">고양이</label>		
		<input type="radio" id="cat" name="animal" value="cat"><br><br>
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label for="mintcho">민트초코</label>
		<input type="checkbox" id="mintcho" name="food" value="민트초코">
		<label for="pizza">하와이안 피자(파인애플)</label>
		<input type="checkbox" id="pizza" name="food" value="하와이안 피자(파인애플)">
		<label for="pupa">번데기</label>
		<input type="checkbox" id="pupa" name="food" value="번데기"><br><br>
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit">
			<option value="복숭아">복숭아</option>
			<option>바나나</option>
			<option>사과</option>
			<option>멜론</option>
			<option>딸기</option>
		</select><br><br>
		
		<button type="submit">제출</button>
	</form>
</body>
</html>