<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title><!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<!-- jquery slim 제거-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int cm = Integer.valueOf(request.getParameter("num"));
		// checkbox 같은 여러 파라미터를 한꺼번에 받아올 때 getParameterValues();
		String[] unitArr = request.getParameterValues("unit");
	%>
	<div class="container">
		<h1>길이 변한 결과</h1>
		<h3><%=cm %>cm</h3>
		<hr>
		<h2>
			<%
				for (String unit : unitArr) {
					if (unit.equals("inch")) {
						double inch = cm * 0.393701;
						out.print(inch + " in<br>");
					} else if (unit.equals("yard")) {
						double yard = cm * 0.0109361;
						out.print(yard + " yd<br>");
					} else if (unit.equals("feet")) {
						double feet = cm * 0.0328084;
						out.print(feet + " ft<br>");
					} else if (unit.equals("meter")) {
						double meter = cm * 0.01;
						out.print(meter + " m<br>");
					}
				}
			%>
		</h2>
	</div>
</body>
</html>