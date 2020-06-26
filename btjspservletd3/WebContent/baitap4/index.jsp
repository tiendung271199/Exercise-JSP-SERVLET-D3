<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Bài Tập 4</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resetcss/reset.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/baitap4/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/jqueryvalidator/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jqueryvalidator/jquery.validate.min.js"></script>
</head>
<body>
	<%
		String doanVanGoc = (String) request.getAttribute("goc");
		String doanVanThayThe = (String) request.getAttribute("kq");
		String tuGoc = (String) request.getAttribute("tg");
		String tuThayThe = (String) request.getAttribute("ttt");
	%>
	<div class="wrapper">
		<div class="header">
			<p>Thay thế chuỗi</p>
		</div>
		<div class="main">
			<div class="body">
				<form class="form" action="<%=request.getContextPath()%>/bai-tap-4"
					method="post" id="form">
					<p>Đoạn văn gốc:</p>
					<p>
						<textarea name="doanvan" rows="2" cols="80"><%if (doanVanGoc != null) out.print(doanVanGoc); %></textarea>
					</p>
					<p>
						<label>Từ gốc</label> <input type="text" name="tugoc" id="tugoc" value="<%if (tuGoc != null) out.print(tuGoc); %>" />
						<label>Thay thế bằng</label> <input type="text" name="thaythe"
							id="thaythe" value="<%if (tuThayThe != null) out.print(tuThayThe); %>" />
					</p>
					<%
						if (doanVanThayThe != null) {
					%>
					<p>
						<textarea rows="2" cols="80"><%=doanVanThayThe%></textarea>
					</p>
					<%
						}
					%>
					<p class="button">
						<input type="submit" name="submit" id="submit" value="Thực hiện" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function (){
			$('#form').validate({
				rules : {
					"doanvan" : {
						required : true,
					}
				},
				messages : {
					"doanvan" : {
						required : "Bắt buộc nhập!",
					}
				}
			})
		})
	</script>
</body>
</html>