<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Bài Tập 2</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resetcss/reset.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/baitap2/style.css">
</head>
<body>
	<%
		String name = (String) request.getAttribute("ten");
	%>
	<div class="wrapper">
		<div class="header">
			<p>In câu chào</p>
		</div>
		<div class="main">
			<form action="<%=request.getContextPath()%>/bai-tap-2" method="post" id="form">
				<p>
					<label>Nhập tên: </label> <input type="text" name="name" id="name" value="<%if(name != null) out.print(name); %>" />
				</p>
				<%
					if (name != null) {
				%>
				<p>
					Câu chào: <label style="font-weight: bold">Chào bạn <%=name%></label>
				</p>
				<%
					}
				%>
				<p>
					<input type="submit" name="submit" id="submit" value="In câu chào">
				</p>
			</form>
		</div>
	</div>
</body>
</html>