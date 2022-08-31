<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<!-- jquery slim 제거-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="d-flex align-items-end">
				<input type="text" class="form-control col-2 mr-2" name="num">
				<span>cm</span>
			</div>
			<label for="inch" class="mr-1">인치</label>
			<input type="checkbox" name="unit" id="inch" value="inch" class="mr-2">
			<label for="yard" class="mr-1">야드</label>
			<input type="checkbox" name="unit" id="yard" value="yard" class="mr-2">
			<label for="feet" class="mr-1">피트</label>
			<input type="checkbox" name="unit" id="feet" value="feet" class="mr-2">
			<label for="meter" class="mr-1">미터</label>
			<input type="checkbox" name="unit" id="meter" value="meter"><br>
			<button type="submit" class="btn btn-success">변환하기</button>
		</form>
	</div>
</body>
</html>