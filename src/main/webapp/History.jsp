<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>와이파이 정보 구하기</title>


<style>
	#history_list ul {
		list-style-type: none;
		margin: 0;
		padding: 30px 0px 30px 0px;
		//overflow: hidden;
	}
	#history_list li {
		display: flex;
		justify-content: space-around;
		height: 30px;
		padding: 8px;
		background-color: #00AB6F;
		
	}
	#history_list li a {
		width: 80px;
		text-decoration: none;
		text-align: center;
		font-size: 12px;
		color: #FFF;
		line-height: 30px;
		font-weight: bold;
	}
	#history_list ul p {
		text-align: center;
		font-weight: bold;
	}

</style>
</head>
<body>
	<h1>위치 히스토리 목록</h1>
	<p><a href="Wifi.jsp">홈</a> | <a href="History.jsp">위치 히스토리 목록</a> | <a href="LoadWifi.jsp">Open API 와이파이 정보 가져오기</a></p>
  	
  	<div id="history_list">
  		<ul>
	  		<li>
	  			<a href=#>ID</a>
	  			<a href=#>X좌표</a>
	  			<a href=#>Y좌표</a>
	  			<a href=#>조회일자</a>
	  			<a href=#>비고</a>
	  		</li>
  		</ul>
  	</div>
	
	
	
    
</body>
</html>