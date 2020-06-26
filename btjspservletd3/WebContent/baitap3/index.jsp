<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Bài Tập 3</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resetcss/reset.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/baitap3/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/jqueryvalidator/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jqueryvalidator/jquery.validate.min.js"></script>
</head>
<body>
	<%
		String banKinh = (String) request.getAttribute("bk");
		String dienTich = (String) request.getAttribute("dt");
	%>
	<div class="wrapper">
		<div class="header">
			<p>Hình tròn</p>
		</div>
		<div class="main">
			<form action="<%=request.getContextPath()%>/bai-tap-3" method="post" id="form">
				<p>
					<label>Diện tích: </label> <input type="text" name="dientich"
						id="dientich" value="<%if (dienTich != null) out.print(dienTich);%>" />
				</p>
				<p>
					<label>Bán kính: </label> <input type="text" name="bankinh"
						id="bankinh" value="<%if (banKinh != null) out.print(banKinh);%>" />
				</p>
				<%
					if (request.getAttribute("thongbao") != null) {
				%>
				<p style="color: red; font-style: italic">
					<%=request.getAttribute("thongbao")%>
				</p>
				<%
					}
				%>
				<p>
					<input type="submit" name="submit" id="submit" value="Submit" />
				</p>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function (){
			$('#form').validate({
				rules : {
					"bankinh" : {
						number : true,
					},
					"dientich" : {
						number : true,
					}
				},
				messages : {
					"bankinh" : {
						number : "Vui lòng nhập số!",
					},
					"dientich" : {
						number : "Vui lòng nhập số!",
					}
				}
			})
		})
		</script>
</body>
</html>