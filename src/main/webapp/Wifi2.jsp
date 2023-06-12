<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="database.Database" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와이파이 정보 구하기</title>
<script type = "text/javascript" src="./WEB-INF/js/jquery-3.7.0.min.js"></script>
<script type = "text/javascript" src="./WEB-INF/js/newFile.js"></script>
</head>
<body>
	<form action="lib.do" method = "post">
		<input type = "submit" value = "db에저장">
		<input type = "hidden" name = "command" value = "listdb">
		<table border="1">
		<thead>
		</thead>
		<tbody>
		</tbody>
	</table>
	</form>
</body>
</html>