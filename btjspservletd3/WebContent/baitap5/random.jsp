<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài Tập 5</title>
</head>
<body>
	<h1 style="color: red">Kiểm tra số Random</h1>
	<%
		int n = (int) request.getAttribute("number");
		out.print("Number: " + n);
		if (n % 2 == 0) {
	%>
	<p style="color:blue; font-style: italic; font-size: 20px">Đây là số chẵn</p>
	<%
		} else {
	%>
	<p style="color:blue; font-style: italic; font-size: 20px">Đây là số lẻ</p>
	<%
		}
	%>
</body>
</html>