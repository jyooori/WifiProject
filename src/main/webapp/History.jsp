<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ���� ���ϱ�</title>


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
	<h1>��ġ �����丮 ���</h1>
	<p><a href="Wifi.jsp">Ȩ</a> | <a href="History.jsp">��ġ �����丮 ���</a> | <a href="LoadWifi.jsp">Open API �������� ���� ��������</a></p>
  	
  	<div id="history_list">
  		<ul>
	  		<li>
	  			<a href=#>ID</a>
	  			<a href=#>X��ǥ</a>
	  			<a href=#>Y��ǥ</a>
	  			<a href=#>��ȸ����</a>
	  			<a href=#>���</a>
	  		</li>
  		</ul>
  	</div>
	
	
	
    
</body>
</html>